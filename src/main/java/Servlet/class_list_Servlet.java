package Servlet;

import Utils.BaseServlet;
import Utils.FileUploadUtils;
import Utils.PageQuery;
import org.apache.commons.beanutils.BeanUtils;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;

import Domain.Class_List;

@WebServlet("/class_list_Servlet")
public class class_list_Servlet extends BaseServlet {
	Service.class_list_Service class_list_Service=new Service.class_list_Service();
//    /**
//     * Default constructor. 
//     */
//    public class_list_Servlet() {
//        // TODO Auto-generated constructor stub
//    }
	
	 public String Add_LoadStudentClassList(HttpServletRequest request, HttpServletResponse response){
    	 PageQuery<Class_List> classListpageQuery=new PageQuery<>();
	        //想要查询的页数
	        classListpageQuery.setCurrentPage(1);
	        //想要查询页数的第一个评论的位置
	        classListpageQuery.setCurrentfirst((classListpageQuery.getCurrentPage()-1)*PageQuery.getDefaultPageSize());
	        //获取查询页的全部评论
	        classListpageQuery.setItems(class_list_Service.getClassLists(classListpageQuery.getCurrentfirst()));
	        classListpageQuery.setTotalRows(class_list_Service.getClassListTotal());
            return "r:/admin/admin_class_list.jsp";//???
    }
    public String LoadStudentClassList(HttpServletRequest request, HttpServletResponse response){

    	 PageQuery<Class_List> classListpageQuery=new PageQuery<>();
	        //想要查询的页数
	        String qp=request.getParameter("classListpageQuery");//?
	        classListpageQuery.setCurrentPage(Integer.parseInt(qp));
	        //想要查询页数的第一个评论的位置
	        classListpageQuery.setCurrentfirst((classListpageQuery.getCurrentPage()-1)*PageQuery.getDefaultPageSize());
	        //获取查询页的全部评论
	        classListpageQuery.setItems(class_list_Service.getClassLists(classListpageQuery.getCurrentfirst()));
	        classListpageQuery.setTotalRows(class_list_Service.getClassListTotal());
	        request.getSession().setAttribute("classListpageQuery",classListpageQuery);

        return "r:/html/eduManageDetail-4.jsp";//???
    }

    public String Admin_LoadClassList(HttpServletRequest request, HttpServletResponse response){
        PageQuery<Class_List> classListpageQuery=new PageQuery<>();
        String type=request.getParameter("type1");
        //想要查询的页数
        String qp=request.getParameter("classListpageQuery");//?
        classListpageQuery.setCurrentPage(Integer.parseInt(qp));
        //想要查询页数的第一个评论的位置
        classListpageQuery.setCurrentfirst((classListpageQuery.getCurrentPage()-1)*PageQuery.getDefaultPageSize());
        //获取查询页的全部评论
        classListpageQuery.setItems(class_list_Service.getClassLists(classListpageQuery.getCurrentfirst()));
        classListpageQuery.setTotalRows(class_list_Service.getClassListTotal());
        request.getSession().setAttribute("classListpageQuery",classListpageQuery);
    
        	return "r:/admin/admin_class_list.jsp";
		
        
    }
    
    public String AddClassList(HttpServletRequest request, HttpServletResponse response) throws FileNotFoundException, IOException, IllegalAccessException, InvocationTargetException{
    	Map<String, String[]> map = new HashMap<String,String[]>();
    	//		1.创建一个DiskFileItemFactory
    	DiskFileItemFactory factory = new DiskFileItemFactory();
//    	2.创建ServletFileUpload类	
    	ServletFileUpload upload = new ServletFileUpload(factory);
    	upload.setHeaderEncoding("utf-8");//
//    	3.解析所有上传数据
    	try {
    		List<FileItem> items = upload.parseRequest(request);
    		for(FileItem fileItem : items) {
    			if(fileItem.isFormField()) {
    				   if("class_name".equals(fileItem.getFieldName())){
    					   map.put("class_name", new String[] {fileItem.getString("utf-8")});
    				   }
    				   else if("major".equals(fileItem.getFieldName())){
    					   map.put("major", new String[] {fileItem.getString("utf-8")});
    				   }
    				   else if("course".equals(fileItem.getFieldName())){
    					   map.put("course", new String[] {fileItem.getString("utf-8")});
    				   }
    				}
    			else {
    				 String filename = fileItem.getName();//获取文件名，保存在数据库
    				 //
    				 filename = FileUploadUtils.getRealName(filename);//获取文件的真实文件名
    				 map.put("class_file_name",new String[]{filename});
    		
    				 String uuidname = FileUploadUtils.getUUIDFileName(filename);
    				 map.put("uuidname", new String[]{uuidname});//获取并封装随机文件名
    				 
    				 String randompath1 = FileUploadUtils.getRandomDirectory(filename);//两重地址，一重即可,修改函数
    				 String randompath="\\班级名单";
    				 String uploadpath = request.getServletContext().getRealPath("/upload");
//    				 String uploadpath=System.getProperty("user.dir")+"\\upload";
    				 File parentFile = new File(uploadpath, randompath);
    				 if(!parentFile.exists())
    					 parentFile.mkdirs();//创建文件保存的目录
    			     
    				 map.put("class_file", new String[]{uploadpath+randompath+"\\"+filename});//封装上传文件的保存路径

    				 
    				 //上传文件
    				 IOUtils.copy(fileItem.getInputStream(), new FileOutputStream(new File(parentFile, filename)));
    				 fileItem.delete();
    			}
    		}
    		// 将数据封装到javaBean
    		Class_List class_List=new Class_List();
    		BeanUtils.populate(class_List, map);
    		class_list_Service.addClassList(class_List);
    		PageQuery<Class_List> classListpageQuery=new PageQuery<>();
            //想要查询的页数
            classListpageQuery.setCurrentPage(1);
            //想要查询页数的第一个评论的位置
            classListpageQuery.setCurrentfirst((classListpageQuery.getCurrentPage()-1)*PageQuery.getDefaultPageSize());
            //获取查询页的全部评论
            classListpageQuery.setItems(class_list_Service.getClassLists(classListpageQuery.getCurrentfirst()));
            classListpageQuery.setTotalRows(class_list_Service.getClassListTotal());
            request.getSession().setAttribute("classListpageQuery",classListpageQuery);
            return "r:/admin/admin_class_list.jsp";//
    		
    	} catch (FileUploadException e) {
    		// TODO Auto-generated catch block
    		e.printStackTrace();
    	} 
    	 return "r:/admin/admin_class_list.jsp";//
    }

    public String deleteClassList(HttpServletRequest request, HttpServletResponse response){
        String class_id=request.getParameter("class_id")+"";//why
        class_list_Service.deleteClassList(class_id);
//        Add_LoadStudentClassList(request, response);
        PageQuery<Class_List> classListpageQuery=new PageQuery<>();
        //想要查询的页数
        classListpageQuery.setCurrentPage(1);
        //想要查询页数的第一个评论的位置
        classListpageQuery.setCurrentfirst((classListpageQuery.getCurrentPage()-1)*PageQuery.getDefaultPageSize());
        //获取查询页的全部评论
        classListpageQuery.setItems(class_list_Service.getClassLists(classListpageQuery.getCurrentfirst()));
        classListpageQuery.setTotalRows(class_list_Service.getClassListTotal());
        request.getSession().setAttribute("classListpageQuery",classListpageQuery);
        return "r:/admin/admin_class_list.jsp";//
    }
    
    public String searchByName(HttpServletRequest request, HttpServletResponse response){
    	PageQuery<Class_List> classListpageQuery=new PageQuery<>();
    	String nameString=request.getParameter("searchName")+"";
    	List <Class_List> class_Lists=new ArrayList<Class_List>();
    	class_Lists=class_list_Service.searchByName(nameString);	
        //永远设为第一页
        classListpageQuery.setCurrentPage(1);
        //想要查询页数的第一个评论的位置
        classListpageQuery.setCurrentfirst((classListpageQuery.getCurrentPage()-1)*PageQuery.getDefaultPageSize());
        //获取查询页的全部评论
        classListpageQuery.setItems(class_Lists);
        classListpageQuery.setTotalRows(class_Lists.size());
        request.getSession().setAttribute("classListpageQuery",classListpageQuery);
        if(classListpageQuery.getItems().size()==0){
        	return "r:/admin/test.jsp";
        }
    	return "r:/admin/admin_class_list.jsp";
    }
}
