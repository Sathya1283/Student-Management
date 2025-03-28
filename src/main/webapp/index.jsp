<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 body {
           background: linear-gradient(135deg, #007bff, #00c6ff);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            flex-direction: column;
        }

        h1 {
            margin-bottom: 20px;
             color: #ffffff;
            font-size: 28px;
        }

        .box {
           background-color: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            border: 2px solid #007bff;
        }

        .vertical-links a {
            display: block;
            padding: 15px;
            margin: 15px 16px;
            background: linear-gradient(90deg, #007bff, #0056b3);
            color: white;
            text-align: center;
            text-decoration: none;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }

        .vertical-links a:hover {
            background: linear-gradient(90deg, #0056b3, #007bff);
        }
</style>
</head>
<body>
<h1>Student Database System</h1>

<div class="vertical-links">
 <div class="box">
        <a href="adminlogin.jsp">Admin</a><br><br>
        <a href="#">Student</a>
    </div>
    </div>

</body>
</html>