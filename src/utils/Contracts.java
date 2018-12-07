package utils;

import model.UsersModel;

public class Contracts {
	public static final String DATABASE_NAME = "orderfood";
	public static final String TB_USERS = "users";
	public static final String TB_FOODS = "foods";
	public static final String TB_CART = "cart";
	public static UsersModel USER;
	
	public static String sqlLogin(String email, String password) {
		if (!email.isEmpty() && !password.isEmpty()) {
			return "SELECT * FROM " + TB_USERS + " WHERE email = \'" + email + "\' AND password = \'" + password +"\'";
		}
		return null;
	}
	
	public static String sqlGetFoods() {
		return "SELECT * FROM "+ TB_FOODS;
	}
	
	public static String sqlSpecitalFood() {
		return "SELECT TOP 4 * FROM " + TB_FOODS + " ORDER BY see DESC";
	}
	
	public static String sqlGetFood(int id) {
		return "SELECT * FROM " + TB_FOODS + " WHERE id = " + id;
	}
	
	public static String sqlStoreCard(int idUser, int idFood) {
		return "INSERT INTO " + TB_CART + "(id_user, id_food, paymented) VALUES(" + idUser + ", "+idFood+", 0)";
	}
	
	public static String sqlStoreUser(String userName, String email, String password) {
		return "insert into users(username, email, password) values ('"+userName+"', '"+email+"', '"+password+"')";
	}
	
	public static String sqlCart(int idUser) {
		return "select * from "+TB_CART+" where id_user = " + idUser;
	}
	
	public static String sqlRemove(int id) {
		return "DELETE from " + TB_CART + " where id = " + id;
	}
	
}
