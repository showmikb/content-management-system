package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.Login;
import com.bean.Registration1;
import com.service.Service;

/**
 * Servlet implementation class Loginc
 */
@WebServlet("/Loginc")
public class Loginc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Loginc() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Service ser=new Service();
		
		
		System.out.println("Do post invoked");
		
		
		String caller=request.getParameter("action");
		
		if("login".equals(caller)){
			Login lg=new Login();
			lg.setUname(request.getParameter("name"));
			lg.setPwd(request.getParameter("password"));
			
			
		try {
			int logincheck = ser.loginService(lg);
			if(logincheck == 1){
			HttpSession session=request.getSession();
			session.setAttribute("admin","1");  
			System.out.println("Successful login");
			 RequestDispatcher rd=request.getRequestDispatcher("/AdminLogin.jsp");  
		     rd.forward(request,response);  
			}
			else if(logincheck == 2) {
				HttpSession session=request.getSession();
				session.setAttribute("admin","2"); 
				 RequestDispatcher rd=request.getRequestDispatcher("/AdminLogin.jsp");  
			     rd.forward(request,response);  
			}
			else if(logincheck == 3) {
				PrintWriter out=response.getWriter();
				response.setContentType("text/html");
				out.write("<script>");
				out.println("alert('Your account is locked :( , Contact Admin to unlock');");
				   out.println("location='index.jsp';");
				   out.println("</script>");
			}
			else{
				HttpSession session=request.getSession(false);
				  
				//int i=(int)session.getAttribute("lock");
				if(session.getAttribute("lock") == null){
					session.setAttribute("lock",0);  
				}
				else {
					int i=(int)session.getAttribute("lock");
					session.setAttribute("lock",++i); 
					int i2=(int)session.getAttribute("lock");
					if(i2 >= 2) {
						ser.lockuser(request.getParameter("name"));
						System.out.println("account locked");
					}
				}
				
				
				
				
				System.out.println("failed");
				PrintWriter out=response.getWriter();
				int attempttmp=(int)session.getAttribute("lock");
				int attempt=3-attempttmp;
				response.setContentType("text/html");
				out.write("<script>");
				out.println("alert('User or password incorrect "+attempt+" attempts left');");
				   out.println("location='index.jsp';");
				   out.println("</script>");
				
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
		
		if("register".equals(caller)){
			
			Registration1 rg=new Registration1();
			
			
			rg.setUname(request.getParameter("name"));
			rg.setPawd(request.getParameter("password"));
			rg.setSecq(request.getParameter("secretq"));
			System.out.println(rg.getSecq());
			rg.setSecans(request.getParameter("sanswer"));
			
			
			try {
				int reg= ser.registrationService(rg);
				if(reg == 1){
					System.out.println("Registration Successfull");
					
					
					
					RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");  
				     rd.forward(request,response);
					
					
				}
				else if(reg == 2) {
					PrintWriter out=response.getWriter();
					response.setContentType("text/html");
					out.write("<script>");
					out.println("alert('Sorry username is already taken');");
					   out.println("location='index.jsp';");
					   out.println("</script>");
					   
					   
					   
					
					System.out.println("Same username");
				}
				else{
					System.out.println("Registration Failed");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		if("forgot".equals(caller)){
			Registration1 rg=new Registration1();
			rg.setUname(request.getParameter("name"));
			rg.setSecq(request.getParameter("secretq"));
			rg.setSecans(request.getParameter("answer"));
			try {
				String retpwd=ser.resetPwd(rg);
				
				
				if(retpwd!=null){
				PrintWriter out=response.getWriter();
				response.setContentType("text/html");
				out.write("<h3>");
				out.println("Your Password is :"+retpwd);
				   
				   out.println("</h3>");
				}
				else
				{
					
					
				  
					PrintWriter out=response.getWriter();
					response.setContentType("text/html");
					out.write("<script>");
					out.println("alert('Incorrect Answer/Question');");
					   out.println("location='forgot.jsp';");
					   out.println("</script>");
					   rg.setUname(request.getParameter("name"));
					   
				}
				
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		
	}

}
