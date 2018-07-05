package com.service;

import java.sql.SQLException;

import com.bean.Registration1;

import com.bean.Login;
import com.dao.UserDao;

public class Service {

	UserDao ud;
	public int loginService(Login lg) throws SQLException, ClassNotFoundException{
		
		ud=new UserDao();
		return ud.loginValidate(lg);
	}
	public int lockuser(String username) throws SQLException, ClassNotFoundException{
		
		return ud.lockuser(username);
	}
	
	
	public int registrationService(Registration1 rg) throws SQLException, ClassNotFoundException{
		ud=new UserDao();
		
		return ud.registerUser(rg);
		
	}
	
	public String resetPwd(Registration1 rd) throws SQLException, ClassNotFoundException{
		ud=new UserDao();
		String retrievedpwd=null;
		retrievedpwd=ud.resetPassword(rd);
		System.out.println(retrievedpwd);
		
		
		return retrievedpwd;
	}
	
	
}
