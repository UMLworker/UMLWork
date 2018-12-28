package Dao;

import Domain.Expert_Evaluation;
import Domain.teacher_evalution;
import Utils.JDBCutil;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class teacher_evalutionDao {
    JDBCutil jdbcutil = new JDBCutil();

    public int addEvalution(teacher_evalution evaluation){
        String sql = "insert into teacher_evalution values(NULL,?,?,?,?,0)";
        List<Object> params = new ArrayList<>();

        params.add(evaluation.getEvalutionTitle());
        params.add(evaluation.getTeacherName());
        params.add(evaluation.getContent());
        params.add(evaluation.getEvalutionTime());

        try {
            System.out.println(params);
            jdbcutil.updateByPreparedStatement(sql, params);

        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
        return 1;
    }

    public List getAll() {
        String sql="select * from teacher_evalution";
        try {
            List<Object> params=new ArrayList<>();
            List<Map<String, Object>> list= (List<Map<String, Object>>) jdbcutil.findModeResult(sql,params);
            return list;
        }catch (Exception e){
            throw new RuntimeException(e.getMessage());
        }
    }
}
