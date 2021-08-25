package Metier;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.stereotype.Service;

import java.sql.Statement;



import DAO.Menu;
@Service
public class ClientOperation {
	private static ConnexionBase con;
	private static Connection connect ;

	
	public ClientOperation() {
		//con = new ConnexionBase();
		connect= con.getConnection();
	}
	
public ArrayList<Menu> consulterMenu(){
	ArrayList<Menu> l=new ArrayList<Menu>();
	String query ="select * from Menus";
	
	try {
		
	Statement st=connect.createStatement();
	ResultSet R=st.executeQuery(query);
	
	
	while(R.next()) {
		Menu m=new Menu();
		m.setId(R.getInt("id"));
		System.out.println(m.getId());
		m.setItems(R.getString("items"));
		System.out.println(m.getItems());
		m.setPrix(R.getDouble("prix"));
		System.out.println(m.getPrix());
		l.add(m);

	}
   R.close();
   st.close();
   
}catch(SQLException e){
	e.printStackTrace();
}
	return l;
	
	
}
public void AjouterBD(String UseName,String gmail,String adresse) {
	try {
		Statement st=connect.createStatement();
		int rest=st.executeUpdate("INSERT INTO ClientInf(Usrename,gmail,adresse)VALUES("+UseName+","+gmail+","+adresse+")");
		
		
	}catch(SQLException e) {
		e.printStackTrace();
	}
	
	
}
}