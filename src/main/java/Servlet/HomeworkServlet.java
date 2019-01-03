package Servlet;

import Domain.FileBean;
import Service.HomeworkService;
import Utils.BaseServlet;
import Utils.FileUploadUtils;
import Utils.PageQuery;
import sun.misc.BASE64Encoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.net.URLEncoder;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@WebServlet("/HomeworkServlet")
public class HomeworkServlet extends BaseServlet{
	
    HomeworkService homeworkService=new HomeworkService();
    
    public String LoadHomework(HttpServletRequest request, HttpServletResponse response){

        PageQuery<FileBean> HomeworkpageQuery=new PageQuery<>();
        //想要查询的页数
        String qp=request.getParameter("HomeworkpageQuery");
        HomeworkpageQuery.setCurrentPage(Integer.parseInt(qp));
        //想要查询页数的第一个评论的位置
        HomeworkpageQuery.setCurrentfirst((HomeworkpageQuery.getCurrentPage()-1)*PageQuery.getDefaultPageSize());
        //获取查询页的全部作业
        HomeworkpageQuery.setItems(homeworkService.getHomeworkList(HomeworkpageQuery.getCurrentfirst()));
        HomeworkpageQuery.setTotalRows(homeworkService.getAll());
        request.getSession().setAttribute("HomeworkpageQuery",HomeworkpageQuery);

        return "r:/html/eduManageDetail-5.jsp";
    }

    public String Admin_LoadHomework(HttpServletRequest request, HttpServletResponse response){

        PageQuery<FileBean> HomeworkpageQuery=new PageQuery<>();
        //想要查询的页数
        String qp=request.getParameter("HomeworkpageQuery");
        HomeworkpageQuery.setCurrentPage(Integer.parseInt(qp));
        //想要查询页数的第一个评论的位置
        HomeworkpageQuery.setCurrentfirst((HomeworkpageQuery.getCurrentPage()-1)*PageQuery.getDefaultPageSize());
        //获取查询页的全部作业
        HomeworkpageQuery.setItems(homeworkService.getHomeworkList(HomeworkpageQuery.getCurrentfirst()));
        HomeworkpageQuery.setTotalRows(homeworkService.getAll());
        request.getSession().setAttribute("HomeworkpageQuery",HomeworkpageQuery);
        return "f:/admin/admin-homework.jsp";
    }
    
    /**
     * 1.完成文件上传的相关操作
     * 2.将文件上传的信息存储到db中
     */
    private static final long serialVersionUID = 1L;
    
    public String Add_Homework(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException{
    	Map<String, String[]> map = new HashMap<String,String[]>();
    	//		1.创建一个DiskFileItemFactory
    	DiskFileItemFactory factory = new DiskFileItemFactory();
//    	2.创建ServletFileUpload类	
    	ServletFileUpload upload = new ServletFileUpload(factory);
    	upload.setHeaderEncoding("utf-8");
//    	3.解析所有上传数据
    	try {
    		List<FileItem> items = upload.parseRequest(request);
    		for(FileItem fileItem : items) {
    			if(fileItem.isFormField()) {
    					map.put("description", new String[] {fileItem.getString("utf-8")});
    				}
    			else {
    				 String filename = fileItem.getName();
    				 filename = FileUploadUtils.getRealName(filename);//获取文件的真实文件名
    				 map.put("realname",new String[] { filename });
    				 
    				 String uuidname = FileUploadUtils.getUUIDFileName(filename);
    				 map.put("uuidname", new String[] { uuidname });//获取并封装随机文件名
    				 
    				 String randompath = FileUploadUtils.getRandomDirectory(filename);
    				 String uploadpath = request.getServletContext().getRealPath("/WEB-INF/upload");
    				 File parentFile = new File(uploadpath, randompath);
    				 if(!parentFile.exists())
    					 parentFile.mkdirs();//创建文件保存的目录
    				 map.put("savepath", new String[] {uploadpath+randompath});//封装上传文件的保存路径

    				 
    				 //上传文件
    				 IOUtils.copy(fileItem.getInputStream(), new FileOutputStream(new File(parentFile, uuidname)));
    				 fileItem.delete();
    			}
    		}
    		// 将数据封装到javaBean
    		 FileBean fileBean = new FileBean();
    		 BeanUtils.populate(fileBean, map);
    		 
    		 Date date = new Date();       
             Timestamp nousedate = new Timestamp(date.getTime());
             fileBean.setTimestamp(nousedate);
    		 
    		// 调用service完成保存数据到db。
    		 HomeworkService service = new HomeworkService();
    		 service.addHomework(fileBean);
    		 
    		 //response.sendRedirect(request.getContextPath()+"/index.jsp");
    		 return "r:/HomeworkServlet?method=Admin_LoadHomework&HomeworkpageQuery=1";
    		
    	} catch (FileUploadException e) {
    		// TODO Auto-generated catch block
    		e.printStackTrace();
    	} catch (IllegalAccessException e) {
    		// TODO Auto-generated catch block
    		e.printStackTrace();
    	} catch (InvocationTargetException e) {
    		// TODO Auto-generated catch block
    		e.printStackTrace();
    	}
		return "r:/HomeworkServlet?method=Admin_LoadHomework&HomeworkpageQuery=1";
    	
    }       
    

    public String Delete_Homework(HttpServletRequest request, HttpServletResponse response){
        String id=request.getParameter("id")+"";
        homeworkService.deleteHomework(id);

        return "r:/HomeworkServlet?method=Admin_LoadHomework&HomeworkpageQuery=1";
    }
    
    public void Download_Homework(HttpServletRequest request, HttpServletResponse response) throws IOException   {
		//获取id
		String id = request.getParameter("id")+"";
		//调用service，得到resource对象
		//HomeworkService service = new HomeworkService();
		try {
			 System.out.println(id); 
			FileBean fileBean = homeworkService.getById(id);
			
			File file = new File(fileBean.getSavepath(), fileBean.getUuidname());
			if(file.exists()) {
				String filename = fileBean.getRealname();
				String mimeType = this.getServletContext().getMimeType(filename);
				response.setContentType(mimeType);//设置下载类型
				String agent = request.getHeader("user-agent");
				if (agent.contains("MSIE")) {
					// IE浏览器
					filename = URLEncoder.encode(filename, "utf-8");

				} else if (agent.contains("Firefox")) {
					// 火狐浏览器
					BASE64Encoder base64Encoder = new BASE64Encoder();
					filename = "=?utf-8?B?"
							+ base64Encoder.encode(filename.getBytes("utf-8"))
							+ "?=";
				} else {
					// 其它浏览器
					filename = URLEncoder.encode(filename, "utf-8");
				}
				//设置永远是下载而不直接打开
				response.setHeader("Content-Disposition", "attachment;filename=" + filename);
				byte[] bs =FileUtils.readFileToByteArray(file);
				response.getOutputStream().write(bs);
				
				return;
			}
			else {
				throw new RuntimeException("资源已过期");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return;
    }
}
