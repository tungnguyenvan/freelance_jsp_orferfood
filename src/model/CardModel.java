package model;

public class CardModel {
	private int id;
	private int idUser;
	private int idFood;
	private int payment;
	public CardModel(int id, int idUser, int idFood, int payment) {
		super();
		this.id = id;
		this.idUser = idUser;
		this.idFood = idFood;
		this.payment = payment;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdUser() {
		return idUser;
	}
	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	public int getIdFood() {
		return idFood;
	}
	public void setIdFood(int idFood) {
		this.idFood = idFood;
	}
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
	}
	
	
}
