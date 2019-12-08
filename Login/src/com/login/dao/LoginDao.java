package com.login.dao;

import java.sql.*;
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;

public class LoginDao {
	
	public boolean check(String uname,String pass)
	{
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","login","login");
			
			PreparedStatement pst = con.prepareStatement("SELECT username,password FROM login WHERE username=? AND password=?");

			pst.setString(1, uname);
			pst.setString(2, pass);

			ResultSet rs = pst.executeQuery();

			if(rs.next()) {
				return true;
			}
		}
		
		catch (Exception e) {
			e.printStackTrace();
		}

		return false;
		
	}

}
