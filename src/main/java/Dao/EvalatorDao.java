package Dao;

import Domain.Online_Evalator;
import Utils.BeanUtil;
import Utils.JDBCutil;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class EvalatorDao {
    JDBCutil jdbcutil=new JDBCutil();
    public List<Online_Evalator> getEvalatorList(int QueryPage) {
        String sql="select * from online_evalator limit ?,5";
        try {
            List<Object> params=new ArrayList<>();
            params.add(QueryPage);
            List<Map<String, Object>> list= (List<Map<String, Object>>)jdbcutil.findModeResult(sql,params);
            Map<String,Object> map=list.get(0);
            List<Online_Evalator> evalators=new ArrayList<>();
            for(int i=0;i<list.size();i++){
                Online_Evalator temp=new Online_Evalator();
                temp.setCourse_teacher_name((String)map.get("course_teacher_name"));
                temp.setCourse_time((String)map.get("course_time"));
                temp.setCourse_name((String)map.get("course_name"));
                temp.setCourse_property((String)map.get("course_property"));
                temp.setCourse_grade((Double) map.get("course_grade"));
                temp.setCourse_level((String)map.get("course_level"));
                evalators.add(temp);
            }
            return evalators;
        }catch (Exception e){
            e.printStackTrace();
            throw new RuntimeException(e.getMessage());
        }
    }

    public int getEvalatorTotal() {
        String sql="select * from online_evalator";
        try {
            List<Object> params=new ArrayList<>();
            List<Map<String, Object>> list= (List<Map<String, Object>>) jdbcutil.findModeResult(sql,params);
            return list.size();
        }catch (Exception e){
            throw new RuntimeException(e.getMessage());
        }
    }
}
