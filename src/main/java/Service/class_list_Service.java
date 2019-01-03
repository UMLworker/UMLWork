package Service;

//查找，
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Dao.EvalatorDao;
import Dao.class_list_Dao;
import Domain.Class_List;
import Domain.FileBean;
import Domain.Online_Evalator;

public class class_list_Service {
	class_list_Dao class_list_dao = new class_list_Dao();

	public Class_List getById(String class_id) throws SQLException {
		return class_list_dao.getById(class_id);
	}

	public List<Class_List> getClassLists(int page) {
		return class_list_dao.getClassLists(page);
	}

	public int getClassListTotal() {
		return class_list_dao.getClassListTotal();
	}

	public void addClassList(Class_List class_List) {
		class_list_dao.addClassList(class_List);
	}

	public void deleteClassList(String class_id) {
		class_list_dao.deleteClassList(class_id);
	}

	public List<Class_List> searchByName(String name) {
		return class_list_dao.searchByName(name);
	}
}