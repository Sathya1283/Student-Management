package com.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.StudentDao;

@WebServlet("/student1")
public class Signup extends HttpServlet{

	protected void doPost(HttpServletRequest req , HttpServletResponse resp) throws IOException, ServletException {
		
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		long contact=Long.parseLong(req.getParameter("contact"));
		String password=req.getParameter("password");
		String repassword = req.getParameter("repassword");
		
		if (!password.equals(repassword)) {
			resp.getWriter().println("<h3 style='color:red;'>Passwords do not match!</h3>");
            return;
        }
		StudentDao stu=new StudentDao();
		int result;
		try {
			result = StudentDao.insertAdmin(id, name, email, contact, password);
			if (result > 0) {
				 resp.getWriter().println("<h3 style='color:green;'>Registration Successful!</h3>");
		        } else {
		        	resp.getWriter().println("<h3 style='color:red;'>Registration Failed!</h3>");
		        }
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		 
		req.getRequestDispatcher("adminlogin.jsp").include(req, resp);
}
}
