package Dao;

import Domain.Expert_Evaluation;
import Utils.JDBCutil;

import java.util.ArrayList;
import java.util.List;

public class Expert_EvaluationDao {
    JDBCutil jdbcutil = new JDBCutil();

    public int addContent(Expert_Evaluation evaluation){
        String sql = "insert into expert_evaluation values(?,?,?)";
        List<Object> params = new ArrayList<>();
        params.add(evaluation.getTitle());
        params.add(evaluation.getContent());
        params.add(evaluation.getTime());
        try {
            jdbcutil.updateByPreparedStatement(sql, params);
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
        return 1;
    }
}
