package com.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.StudentDao;
import com.Dto.StudentDto;

@WebServlet("/add")
public class AddStudent extends HttpServlet{
protected void doPost(HttpServletRequest req , HttpServletResponse resp) throws IOException, ServletException {
		
		int id=Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		int physics =Integer.parseInt(req.getParameter("physics"));
		int chemistry =Integer.parseInt(req.getParameter("chemistry"));
		int maths =Integer.parseInt(req.getParameter("maths"));
		
		StudentDto stu=new StudentDto(id, name, physics, chemistry, maths);
		
		try {
			int result = StudentDao.insertStudent(stu);
			if (result > 0) {
				 resp.getWriter().println("<h3 style='color:green;'>Student inserted Successful!</h3>");
				 req.getRequestDispatcher("adminhome.jsp").include(req, resp);
		        } else {
		        	resp.getWriter().println("<h3 style='color:red;'> Wrong data entered!</h3>");
		        }
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	

		}
}

