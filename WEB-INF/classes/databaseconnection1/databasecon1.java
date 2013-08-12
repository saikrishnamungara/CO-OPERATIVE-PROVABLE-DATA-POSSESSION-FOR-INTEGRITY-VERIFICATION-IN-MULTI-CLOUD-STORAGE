package databaseconnection1;
import java.sql.*;

public class databasecon1
{
	static Connection con;
	public static Connection getconnection()
	{
 		
 			
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloudserver1","root","root");
		}
		catch(Exception e)
		{
			System.out.println("cloudserver1 database error:"+e);
		}
		return con;
	}
	
}
