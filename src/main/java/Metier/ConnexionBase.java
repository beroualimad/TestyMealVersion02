package Metier;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
//import java.sql.Statement;
public class ConnexionBase {
	public static final String Host="jdbc:mysql://localhost:3306/TastyMealBD";
	public static final String DB_Name="TastyMealBD";
	public static final String USERNAME= "root";
	public static final String PASSWORD="2301000ber";
	
	private static Connection connect;
	public ConnexionBase() {
		try {
			connect= DriverManager.getConnection(Host,USERNAME,PASSWORD);
			//Statement st=connect.createStatement();
		}
		catch (SQLException e) {
			System.out.println("Driver Manager Erreur "+e);
		}
	}
	
	public static Connection getConnection() {
		if (connect == null) {
			new ConnexionBase();
		}
		return connect;
	}
}
