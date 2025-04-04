<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.Dao.StudentDao" %>
    <%@ page import="com.Dto.StudentDto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 body {
             background: linear-gradient(135deg, #4ca1af, #2c3e50);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .edit-box {
             background-color: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            width: 400px;
        }

        .edit-box h2 {
            margin-bottom: 20px;
            color: #343a40;
        }

        .edit-box label {
            margin: 8px 0;
            display: block;
            color: #495057;
            font-weight: 600;
        }

        .edit-box input[type="text"], .edit-box input[type="number"] {
            width: 100%;
            padding: 12px;
            margin: 5px 0 15px;
            border-radius: 8px;
            border: 1px solid #ced4da;
            background-color: #f1f3f5;
            box-sizing: border-box;
            transition: border-color 0.3s ease;
        }

        .edit-box input:focus {
            border-color: #0d6efd;
            outline: none;
        }

        .error {
            border-color: red;
        }

        .edit-box button {
            background-color: #0d6efd;
            color: #fff;
            padding: 12px;
            margin-top: 10px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        .edit-box button:hover {
            background-color: #0a58ca;
        }
         button {
            background: linear-gradient(90deg, #45a045, #4CAF50);
            color: #fff;
            padding: 14px;
            margin-top: 12px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease;
            font-size: 18px;
           
        }
          .update-btn:hover {
            background: linear-gradient(90deg, #2980b9, #3498db);
        }
    </style>
</head>
<body>

<%
 int id=Integer.parseInt(request.getParameter("id"));
StudentDao  dao=new StudentDao();
StudentDto student=dao.findStudent(id);
   %>
<form action="update" method="post">
 <div class="edit-box">
 <h1>Edit</h1>
    id<input type="text" name="id" value="<%= student.getId() %>" readonly/><br>
    Name: <input type="text" name="name" value="<%= student.getName() %>" /><br>
    Physics: <input type="text" name="physics" value="<%= student.getPhysics() %>" /><br>
    Chemistry: <input type="text" name="chemistry" value="<%= student.getChemistry() %>" /><br>
    Maths: <input type="text" name="maths" value="<%= student.getMaths() %>" /><br>
     <button class="update-btn" type="submit" value="Update">Update</button>
    </div>
</form>
</body>
</html>