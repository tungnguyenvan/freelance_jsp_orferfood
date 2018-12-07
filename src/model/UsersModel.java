package model;

public class UsersModel {
	private int id;
	private String email;
	private String password;
	private String userName;
	private String address;
	private int type;
	public UsersModel(int id, String email, String password, String userName, String address, int type) {
		super();
		this.id = id;
		this.email = email;
		this.password = password;
		this.userName = userName;
		this.address = address;
		this.type = type;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	
	
}
