package model;

public class FoodsModel {
	private int id;
	private String name;
	private String description;
	private int price;
	private int type;
	private int see;
	private String image;
	
	public FoodsModel() {
		
	}
	public FoodsModel(int id, String name, String description, int price, int type, int see, String image) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.price = price;
		this.type = type;
		this.see = see;
		this.image = image;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getSee() {
		return see;
	}
	public void setSee(int see) {
		this.see = see;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
}
