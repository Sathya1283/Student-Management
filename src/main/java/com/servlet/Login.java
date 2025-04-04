package com.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.StudentDao;
@WebServlet("/login")
public class Login extends HttpServlet{

	protected void doGet(HttpServletRequest req , HttpServletResponse resp) throws IOException, ServletException {
	
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		StudentDao stu=new StudentDao();
		
		try {
			boolean result=StudentDao.findAdmin(email, password);
			if (result == true) {
				 resp.getWriter().println("<h3 style='color:green;'>Login Successful!</h3>");
				 req.getRequestDispatcher("adminhome.jsp").include(req, resp);
		        } else {
		        	resp.getWriter().println("<h3 style='color:red;'>Login Failed!</h3>");
		        }
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//req.getRequestDispatcher("adminhome.jsp").include(req, resp);
		}
}