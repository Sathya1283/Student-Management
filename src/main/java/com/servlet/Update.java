package com.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.StudentDao;
import com.Dto.StudentDto;

@WebServlet("/update")
public class Update extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        int physics = Integer.parseInt(request.getParameter("physics"));
        int chemistry = Integer.parseInt(request.getParameter("chemistry"));
        int maths = Integer.parseInt(request.getParameter("maths"));

       StudentDao dao=new StudentDao();
       try {
		dao.updateStudent(new StudentDto(id, name, physics, chemistry, maths));
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
       request.getRequestDispatcher("adminhome.jsp").include(request, response);
    }
        
}