package Service;


import Dao.teacher_evalutionDao;
import Domain.teacher_evalution;

import java.util.List;

public class teacher_evalutionService {
    teacher_evalutionDao evalutionDao = new teacher_evalutionDao();

    public void addEvalution(teacher_evalution evalution){
        evalutionDao.addEvalution(evalution);
    }
    public List getAll(){
        return evalutionDao.getAll();
    }

}
