package com.bookstore.conn;
import java.sql.Connection;
import java.sql.DriverManager;

public class Conn {
	
	public Connection getCon()
	{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/bookstore";
			String admin = "root";
			String password = "Ldd@8432";
			Connection conn = DriverManager.getConnection(url,admin,password);
			System.out.println(conn.getMetaData().getURL());
			return conn;
		}
		catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

}
