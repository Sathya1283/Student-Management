package com.Dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Dto.StudentDto;

import com.Dto.*;

public class StudentDao {
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
	}	
	//Save Admin
	public static int insertAdmin(int id,String name,String email,long contact,String password) throws SQLException, ClassNotFoundException {
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("insert into admin values(?,?,?,?,?)");
		pst.setInt(1, id);
		pst.setString(2,name);
		pst.setString(3, email);
		pst.setLong(4, contact);
		pst.setString(5, password);
		return pst.executeUpdate();
	}	
	//Find Admin
	public static boolean findAdmin(String email,String password) throws SQLException, ClassNotFoundException {
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("select * from admin where email=? and password=?");
		pst.setString(1,email);
		pst.setString(2, password);
		ResultSet rs=pst.executeQuery();
		if( rs.next()) {
			return true;
		}
		else {
			return false;
		}
	}
	//Save Student
	public static int insertStudent(StudentDto stu) throws SQLException, ClassNotFoundException {
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("insert into student values(?,?,?,?,?)");
		pst.setInt(1, stu.getId());
		pst.setString(2, stu.getName());
		pst.setInt(3, stu.getPhysics());
		pst.setInt(4, stu.getChemistry());
		pst.setInt(5, stu.getMaths());
		return pst.executeUpdate();
	}
	//Find Student
	public static StudentDto findStudent(int id) throws SQLException, ClassNotFoundException {
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("select * from student where id=?");
		pst.setInt(1,id);
		ResultSet rs=pst.executeQuery();
		if(rs.next()) {
		    StudentDto s=new StudentDto(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getInt(4),rs.getInt(5));
			return s;
		}
		else {
			return null;
		}
	}
	//Delete Student
	public static int deleteStudent(int id) throws SQLException, ClassNotFoundException {
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("delete from student where id=?");
		pst.setInt(1, id);
		return pst.executeUpdate();
	}
	//Find All Student
	public static List<StudentDto> getAll() throws ClassNotFoundException, SQLException{
		Connection con=getConnection();
		Statement st=con.createStatement();
		ResultSet res=st.executeQuery("select * from student");
		List<StudentDto> list=new ArrayList<>();
		while(res.next()) {
			StudentDto e=new StudentDto(res.getInt(1),res.getString(2),res.getInt(3),res.getInt(4),res.getInt(5));
			list.add(e);
		}
		return list;
	}}
