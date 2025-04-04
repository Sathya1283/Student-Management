package com.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.StudentDao;

@WebServlet("/delete")
public class Delete  extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int id = Integer.parseInt(request.getParameter("id"));

        StudentDao dao = new StudentDao();
        try {
			int result=dao.deleteStudent(id);
			if(result >0) {
				response.sendRedirect("adminhome.jsp?message=<h3 style='color:red;'>Deleted Successfully</h3>");
			}
			else {
				response.sendRedirect("adminhome.jsp?message=Deleted Failed");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        request.getRequestDispatcher("adminhome.jsp").include(request, response);
    }
}


