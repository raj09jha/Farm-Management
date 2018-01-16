package com.farm.startup;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Validate {

	public boolean isValid(String u,String p)
	{
	      try{
	    	Class.forName("com.mysql.jdbc.Driver");  
	  		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/farm","SHUBHAM","ronaldocr7");
	  		String sql = "select * from owners where email=? and password=?";
	    	PreparedStatement statement = con.prepareStatement(sql);
	    	statement.setString(1,u);
	    	statement.setString(2,p);
	    	ResultSet rs=statement.executeQuery();
	    	int count=0;
	         	while(rs.next())
	         	{
	             count++;
	         	}
	         	if(count>0)
	         	{
	        	 return true;
	         	}
	        }
	      catch(Exception e)
	      {
	    	  e.printStackTrace();
	    	System.out.println("DB Failed");		
	      }
	      return false;      
}
}