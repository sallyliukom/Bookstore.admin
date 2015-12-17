package com.bookstore.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bookstore.model.adminTable;

public class adminservice {
	private Connection conn;
	private PreparedStatement pstmt;
	public adminservice(){
		conn = new com.bookstore.conn.Conn().getCon();
	}
	
	public boolean valiadmin(adminTable admin){
		try{
			pstmt = conn.prepareStatement("select * from "
					+ "bookstore.admin where name = ? and password = ?");
			pstmt.setString(1,admin.getName());
			pstmt.setString(2,admin.getPassword());
			ResultSet rs = pstmt.executeQuery();
			if(rs.next())
				return true;
			else
				return false;
		}
		catch(SQLException e){
			e.printStackTrace();
			return false;
			
		}

	}
}
