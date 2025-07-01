package model;

public class Toys {
	
	private String name;
	private String category;
	private String description;
	private double price;
	private String image;
	
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
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	private int id;
	@Override
	public String toString() {
		return "Toys [id=" + id + ", name=" + name + ", category=" + category + ", description=" + description
				+ ", price=" + price + ", image=" + image + "]";
	}

}
