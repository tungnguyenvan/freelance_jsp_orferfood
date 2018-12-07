package controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.ConnectDatabase;
import model.UsersModel;
import utils.Contracts;

public class UserController {
	
	public List<UsersModel> login(String email, String password){
		List<UsersModel> users = new ArrayList();
		try {
			ResultSet resultSet = ConnectDatabase.selectData(Contracts.sqlLogin(email, password));
			users = refactorUser(resultSet);
			System.out.println(users.get(0).getEmail());
			if(users.size() > 0) Contracts.USER = users.get(0);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return users;
	}
	
	public boolean register(String userName, String email, String password, String rePassword) {
		boolean result = true;
		try {
			System.out.println("insert into users(username, email, password) values ('tungnguyenvan', 'tung@gmail.com', '1')");
			result = ConnectDatabase.excuteSQL(Contracts.sqlStoreUser(userName, email, rePassword));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return !false;
	}
	
	
	private List<UsersModel> refactorUser(ResultSet result){
		List<UsersModel> users = new ArrayList();
		try {
			while(result.next()) {
				UsersModel model = new UsersModel(result.getInt(1), 
						result.getString(2), 
						result.getString(3), 
						result.getString(4),
						result.getString(5),
						result.getInt(6));
				users.add(model);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		return users;
	}
	
	public static void main(String[] args) {
		UserController controller = new UserController();
		System.out.println(controller.login("nguyen@gmail.com", "1"));
	}
}
