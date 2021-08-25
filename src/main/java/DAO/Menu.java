package DAO;

import org.springframework.data.annotation.Id;




public class Menu {
	@Id
private long id;
	
		
private String items;
private double prix;
public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public String getItems() {
	return items;
}
public void setItems(String items) {
	this.items = items;
}
public double getPrix() {
	return prix;
}
public void setPrix(double prix) {
	this.prix = prix;
}
public Menu() {
	super();
}

}
