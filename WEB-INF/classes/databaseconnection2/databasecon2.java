package databaseconnection2;
import java.sql.*;

public class databasecon2
{
	static Connection con;
	public static Connection getconnection()
	{
 		
 			
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloudserver2","root","root");
		}
		catch(Exception e)
		{
			System.out.println("cloudserver2 database error:"+e);
		}
		return con;
	}
	
}
