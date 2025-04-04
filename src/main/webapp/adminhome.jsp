<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
<%@ page import="com.Dto.StudentDto" %>
<%@ page import="com.Dao.StudentDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
       background: linear-gradient(100deg, #a044ff, #e9e4f0);
     
    }
.stu
{
   width:100%;
   border-collabse:collabse ;
   font-family: Arial, sans-serif;
   font-size:16px;
   margin:20px 0;
   border-radius:8px;
   overflow:hidden;
   box-shadow:0 4px 8px rgba(0,0,0,0.1);
   
}
.stu thead tr{
background-color: #4e4376;
color:#ffffff;
text-align:center;

}
.stu th, .stu td{
  padding:12px 15px;
  text-align:center;
}
.stu tbody tr{
 font-family: Arial, sans-serif;
}
.stu tbody tr:nth-of-type(even){
background-color:#f3f3f3;
}
.stu tbody tr:hover{
background-color:#f5f5f5;
}
.stu tbody tr:last-of-type{
border-bottom:2px solid black;
}
.button{
display:flex;
gap:15px;
margin:20px 0;
}
.b1{
display:inline-block;
padding:12px 20px;
margin:5px;
text-decoration:none;
color:black;
background:linear-gradient(135geg, #009879, #00b2a9);
background-color: white;
border-radius:25px;
transition:all 0.3s ease;
font-weight:bold;
box-shadow:0 4px 8px rgba(0,0,0,0.2);

}
.b1:hover{
background:linear-gradient(135geg,#00b2a9,#009879);
box-shadow:0 6px 12px rgba(0,0,0,0.3);
transform:translate(-3px);
}
.b1:active{
box-shadow:0 2px 4px rgba(0,0,0,0.2);
transform:translate(1px);
}
.b2{
display:inline-block;
padding:12px 20px;
margin:5px;
text-decoration:none;
color:black;
background:linear-gradient(135geg, #009879, #00b2a9);
border-radius:8px;
transition:all 0.3s ease;
font-weight:bold;
box-shadow:0 4px 8px rgba(0,0,0,0.2);
align-items:center;
}
.b2:hover{
background:linear-gradient(135geg,#00b2a9,#009879);
box-shadow:0 6px 12px rgba(0,0,0,0.3);
transform:translate(-3px);
}
.b2:active{
box-shadow:0 2px 4px rgba(0,0,0,0.2);
transform:translate(1px);
}
#edit{
background-color:yellow;
text-decoration: none;
}
#delete{
background-color:red;
color:white;
text-decoration: none;
}
h1{
text-align:center;
color:black;
}
#add{
background-color:#1E90FF;
}
#log{
background-color:#ff7e5f;
}
</style>
</head>
<body>
<h1>Student Details</h1>
<table class="stu" >
<thead>
<tr>
  <th>Id</th>
  <th>Name</th>
  <th>Physics</th>
  <th>Chemistry</th>
  <th>Maths</th>
  <th>Edit</th>
  <th>Delete</th>
</tr>
  <%
            StudentDao dao = new StudentDao();
            List<StudentDto> students = dao.getAll();
            for (StudentDto student : students) {
        %>
</thead>
<tbody>
 <tr>
 <td><%= student.getId() %></td>
 <td><%= student.getName() %></td> 
 <td><%= student.getPhysics() %></td>
 <td><%= student.getChemistry() %></td>
 <td><%= student.getMaths() %> </td>
  <td>
    <a  href="edit?id=<%=student.getId() %>"  class="b2" id="edit">Edit</a>
  
  </td>
  
  <td ><a href="delete?id=<%=student.getId() %>" class="b2" id="delete">Delete</a></td>
</tr>
 <% } %>
</tbody>
</table><br><br>
<% if (request.getParameter("message") !=null){
%>
<p><%= request.getParameter("message") %></p>
<% }%>
<div class="button">
<a href="addstudent.jsp"  class="b1" id="add">Add Student</a>
<a href="index.jsp" class="b1" id="log">Logout</a>
</div>
</body>
</html>





