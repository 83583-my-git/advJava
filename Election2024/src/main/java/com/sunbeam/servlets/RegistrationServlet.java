package com.sunbeam.servlets;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sunbeam.daos.UserDao;
import com.sunbeam.daos.UserDaoImpl;
import com.sunbeam.pojos.User;
@WebServlet("/register")
public class RegistrationServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req, resp);
	}
	protected void processRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String firstName = req.getParameter("firstName");
		String lastName = req.getParameter("lastName");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String dobStr = req.getParameter("dob");
		Date birth = Date.valueOf(dobStr);
		
		String st = req.getParameter("status");
		int status = Integer.parseInt(st);
		String role = req.getParameter("role");
		
		
		try(UserDao userdao = new UserDaoImpl()){
			User user = new User(6,firstName,lastName,email,password, birth, status,role);
			int count = userdao.save(user);
			if(count>=1) {
				System.out.println("register successfully");
			}
		} catch (Exception e) {
			
			e.printStackTrace();
			throw new ServletException(e);
		}
	}
	
	
	

}
