package com.stumpy.lemonade.controllers;
import java.sql.*;


public class JDBCTest {
	private static String url = "jdbc:mysql://localhost:3306/lemonadedb";
	
	public JDBCTest() throws ClassNotFoundException{
		Class.forName("com.mysql.cj.jdbc.Driver");
	}
	
	public static void main(String[] args) throws ClassNotFoundException, SQLException{
		JDBCTest tester = new JDBCTest();
		tester.showStaff();
	}
	
	public void showStaff() throws SQLException {
		String user = "stumpy";
		String pass = "stumpy";
		Connection conn = DriverManager.getConnection(url,user,pass);
		String sqltxt;
		sqltxt = "Select id, first_name, last_name FROM owner";
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sqltxt);
		while(rs.next()) {
			System.out.println(rs.getString(1) + " " +
								rs.getString(2) + " " +
								rs.getString(3) + " ");
		}
		rs.close();
		stmt.close();
		conn.close();
	}
}
