package Service;


import Dao.EvalatorDao;
import Domain.Online_Evalator;

import java.util.List;

public class EvalatorService {

    EvalatorDao evalatorDao=new EvalatorDao();

    public List<Online_Evalator> getEvalatorList(int page) {
        return evalatorDao.getEvalatorList(page);
    }

    public int getEvalatorTotal() {
        return evalatorDao.getEvalatorTotal();
    }
}
