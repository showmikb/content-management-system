package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bean.Registration1;

import com.bean.Login;

public class UserDao {
	
	
	String serverName = "inchnilpdb03.India.TCS.com";
	String portNumber = "1521";
	String sid = "JavaDB03";
	String url = "jdbc:oracle:thin:@" + serverName + ":" + portNumber + ":" + sid;
	String username =  "E111111"; 
	String password = "E111111"; 
	PreparedStatement statement = null;
	Connection conn =null;
	ResultSet rs=null;

	public int loginValidate(Login lg) throws SQLException,ClassNotFoundException{
		
				try 
		{
			
			// load the JDBC-ODBC Bridge driver			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			// connect to db using DriverManager
			System.out.println("The Jdbc URL is "+url);
			conn =DriverManager.getConnection( url, username, password );
			
			// Create a statement object
			
			statement = conn.prepareStatement("select * from g2_reg where USERNAME=?");
			
			statement.setString(1,lg.getUname());
			rs=statement.executeQuery();
			rs.next();
			int lock = rs.getInt("islock");
			if (lock == 1){
				return 3;
			}
			
			statement = conn.prepareStatement("select * from g2_reg where USERNAME=? and PWD=?");
			
			statement.setString(1,lg.getUname());
			statement.setString(2,lg.getPwd());
			rs=statement.executeQuery();
			rs.next();
			
			String admin = rs.getString("utype");
			
			System.out.println(admin);
			if(admin.equalsIgnoreCase("ADMIN")){
				return 1;
			}
			else if (admin.equalsIgnoreCase("USER")){
				return 2;
			}
			

			//< code ........................>

		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			statement.close();
			rs.close();
			conn.close();
		}

		
		return 0;
	
		
	}
	

	public int lockuser(String user1) throws SQLException,ClassNotFoundException{
		
				try 
		{
			
			// load the JDBC-ODBC Bridge driver			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			// connect to db using DriverManager
			System.out.println("The Jdbc URL is "+url);
			conn =DriverManager.getConnection( url, username, password );
			
			// Create a statement object
			statement = conn.prepareStatement("select * from g2_reg where USERNAME=?");
			
			statement.setString(1,user1);
			rs=statement.executeQuery();
			
			
			if(rs.next()){
				statement = conn.prepareStatement("UPDATE g2_reg set islock=1 where USERNAME=?");
				statement.setString(1,user1);
				int r=statement.executeUpdate();
				return r;
			}
			
			

			//< code ........................>

		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			statement.close();
			rs.close();
			conn.close();
		}

		
		return 0;
	
		
	}
	
	
	public int registerUser(Registration1 rg) throws SQLException,ClassNotFoundException{
		
		String username1=null;
		try 
		{
			// load the JDBC-ODBC Bridge driver			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			// connect to db using DriverManager
			System.out.println("The Jdbc URL is "+url);
			conn =DriverManager.getConnection( url, username, password );
			
			statement = conn.prepareStatement("select * from g2_reg where USERNAME=?");
			statement.setString(1,rg.getUname());
			rs=statement.executeQuery();
			while(rs.next()){
				username1 = rs.getString("USERNAME");
				System.out.println(rs.getString("USERNAME"));
		}
			
					if (username1 == null){
						
					// Create a statement object
					statement = conn.prepareStatement("insert into g2_reg values(?,?,?,?,?,?)");
					statement.setString(1,rg.getUname());
					statement.setString(2,rg.getPawd());
					statement.setString(3,rg.getSecq());
					statement.setString(4,rg.getSecans());
					statement.setString(5,"USER");
					statement.setInt(6,0);
				
					
				
					int update=statement.executeUpdate();
					if(update>0)
					return 1;
					else
						return 3;
					}


			//< code ........................>
			else {
				return 2;
			}

		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			statement.close();
			rs.close();
			conn.close();
		}

		
		
		
		return 0;
		
	}
	
	public String resetPassword(Registration1 rg) throws SQLException,ClassNotFoundException{
		String retrievedpwd=null;
		
		try 
		{
			
			// load the JDBC-ODBC Bridge driver			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			// connect to db using DriverManager
			System.out.println("The Jdbc URL is "+url);
			conn =DriverManager.getConnection( url, username, password );
			
			// Create a statement object
			statement = conn.prepareStatement("select pwd from g2_reg where secques=? and secans=? and username=?");
			
			statement.setString(1,rg.getSecq());
			statement.setString(2,rg.getSecans());
			statement.setString(3,rg.getUname());
			rs=statement.executeQuery();
			
			rs.next();
			retrievedpwd=rs.getString("pwd");
			System.out.println("BEfore try:"+retrievedpwd);


			//< code ........................>

		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			statement.close();
			rs.close();
			conn.close();
		}
		
		
		System.out.println("Inside DAO :"+retrievedpwd);
		
		return retrievedpwd;
		
	}
	/*
	public boolean lockUser(Login lg){
		boolean res;
		
		try 
		{
			
			// load the JDBC-ODBC Bridge driver			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			// connect to db using DriverManager
			System.out.println("The Jdbc URL is "+url);
			conn =DriverManager.getConnection( url, username, password );
			
			// Create a statement object
			statement = conn.prepareStatement("update g2_reg ");
			
			statement.setString(1,lg.getUname());
			statement.setString(2,lg.getPwd());
			rs=statement.executeQuery();
			
			res=rs.next();


			//< code ........................>

		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			statement.close();
			rs.close();
			conn.close();
		}

		
		
		
		return false;
		
	}
	*/
	
	
	
}
