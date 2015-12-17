package com.bookstore.service;

import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

//import com.bookstore.model.adminTable;
import com.bookstore.model.bookInfo;

public class bookInfoservice {
	private Connection conn;
	private PreparedStatement pstmt;
	public bookInfoservice(){
		conn = new com.bookstore.conn.Conn().getCon();
	}
	
	public boolean addBook(bookInfo book){
		try{
			pstmt = conn.prepareStatement("insert into bookstore.book "
					+ "(name,author,price,ISBN,category,img,description)"
					+ "values(?,?,?,?,?,?,?)");
			pstmt.setString(1,book.getBookname());
			pstmt.setString(2,book.getBookauthor());
			pstmt.setFloat(3,book.getBookprice());
			pstmt.setInt(4,book.getBookISBN());
			pstmt.setString(5,book.getCategory());
			pstmt.setString(6,book.getBookimg());
			pstmt.setString(7, book.getBookdescription());
			pstmt.executeUpdate();
			
			return true;
		}
		catch(SQLException e){
			e.printStackTrace();
			return false;
			
		}

	}
	public List queryAllbook(){
		List books = new ArrayList();
		try{
			pstmt = conn.prepareStatement("select * from bookstore.book");
			ResultSet rs=pstmt.executeQuery();
			while(rs.next())
			{
				bookInfo book = new bookInfo();
				book.setBookname(rs.getString(1));
				book.setBookauthor(rs.getString(2));
				book.setBookprice(rs.getFloat(3));
				book.setBookISBN(rs.getInt(4));
				book.setCategory(rs.getString(5));
				book.setBookimg(rs.getString(6));
				book.setBookdescription(rs.getString(7));
				books.add(book);
			}
			return books;
		}catch(SQLException e){
			e.printStackTrace();
			return null;
		}
	}
}
