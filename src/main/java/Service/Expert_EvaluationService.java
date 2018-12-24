package Service;

import Dao.Expert_EvaluationDao;
import Domain.Expert_Evaluation;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;

public class Expert_EvaluationService {
    public void addContent(HttpServletRequest request) {
        // Create a factory for disk-based file items
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);
        // 解析request，将其中各表单元素和上传文件提取出来
        try {
            List<FileItem> items = upload.parseRequest(request);// items存放各表单元素
            Expert_Evaluation evaluation = new Expert_Evaluation();
            Iterator<FileItem> iter = items.iterator();
            while (iter.hasNext()) {// 遍历表单元素
                FileItem item = iter.next();

                if (item.isFormField()) {// 非上传文件表单元素
                    String name = item.getFieldName();// 获取表单元素的name属性

                    if ("title".equals(name))
                        evaluation.setTitle(item.getString("UTF-8"));
                    else if ("editorValue".equals(name)) {// uedit上传的内容的数据名称是：editorValue
                        evaluation.setContent(item.getString("UTF-8"));
                    }
                }
            }
            //设置时间
            java.util.Date date = new java.util.Date();          // 获取一个Date对象
            Timestamp timeStamp = new Timestamp(date.getTime());     //   将日期时间转换为数据库中的timestamp类型
            SimpleDateFormat simpleDateFormat= new SimpleDateFormat("yyyyMMddHHMM");
            String time = simpleDateFormat.format(timeStamp);
            evaluation.setTime(time);
            //evaluation.setItemId(java.util.UUID.randomUUID().toString());
            Expert_EvaluationDao expert_evaluationDao = new Expert_EvaluationDao();
            expert_evaluationDao.addContent(evaluation);//
            return;
        } catch (Exception e) {
            e.printStackTrace();
            return;
        }
    }
}
