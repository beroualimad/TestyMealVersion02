package DAO;



public class User {
private String Name;
private String Pass; 
private String UseName;
private String gmail;
private String adresse;


public String getUseName() {
	return UseName;
}
public void setUseName(String useName) {
	UseName = useName;
}
public String getGmail() {
	return gmail;
}
public void setGmail(String gmail) {
	this.gmail = gmail;
}
public String getAdresse() {
	return adresse;
}
public void setAdresse(String adresse) {
	this.adresse = adresse;
}
public String getName() {
	return Name;
}
public void setName(String name) {
	Name = name;
}
public String getPass() {
	return Pass;
}
public void setPass(String pass) {
	Pass = pass;
}



}
