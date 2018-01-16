package com.farm.startup;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Insert {

	public boolean insertData(String n,String em,String p,String m)
	{
	      try{
	    	Class.forName("com.mysql.jdbc.Driver");  
	  		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/farm","SHUBHAM","ronaldocr7");
	    	String sql = "INSERT INTO owners(name,email,password,mobileno) values(?, ?, ?, ?)";
	    	PreparedStatement statement = con.prepareStatement(sql);
	    	statement.setString(1,n);
	    	statement.setString(2,em);
	    	statement.setString(3,p);
	    	statement.setString(4,m);
	    	int count=statement.executeUpdate();
	        if(count>0)
	        {
				System.out.println("Total records updated: "+count);
				
	        }
	        return true; 
	      }
	      catch(Exception e)
	      {
	    	  e.printStackTrace();
	    	System.out.println("DB Failed");		
	      }
	      return false;      
}
}
