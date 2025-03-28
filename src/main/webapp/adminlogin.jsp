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
            font-size: 38px;
            font-weight: bold;
            background: linear-gradient(90deg, yellow, red, grey);
            -webkit-background-clip: text;
            color: transparent;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
            margin-bottom: 20px;
        }

        .login-box {
            background-color: #fff;
            padding: 50px 40px;
            border-radius: 16px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
            border: 2px solid #2ecc71;
            width: 400px;
            text-align: center;
        }

        h2 {
            color: #2c3e50;
            margin-bottom: 20px;
            font-size: 28px;
        }

        label {
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
            color: #2c3e50;
            text-align: left;
        }

        input[type="email"], input[type="password"] {
            width: 100%;
            padding: 14px;
            margin: 8px 0;
            border-radius: 8px;
            border: 1px solid #bdc3c7;
            background-color: #ecf0f1;
            box-sizing: border-box;
            transition: border-color 0.3s ease;
            font-size: 16px;
        }

        input:focus {
            border-color: #2ecc71;
            outline: none;
        }

        button {
            background: linear-gradient(90deg, #e74c3c, #c0392b);
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

        button:hover {
            background: linear-gradient(90deg, #c0392b, #e74c3c);
        }

        .signup-link {
            margin-top: 12px;
            color: blue;
            text-decoration: none;
            font-size: 16px;
        }

        .signup-link:hover {
            text-decoration: underline;
        }

        .signup-btn {
            margin-top: 12px;
            background: linear-gradient(90deg, #3498db, #2980b9);
            color: #fff;
            padding: 12px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease;
            font-size: 18px;
        }

        .signup-btn:hover {
            background: linear-gradient(90deg, #2980b9, #3498db);
        }
        #n1{
          text-decoration: none;
          color:white;
        }
         #n2{
          text-decoration: none;
          color:white;
        }

</style>
</head>
<body>
<form action="login" method="get">
 <div class="login-box">
        <h2>Login</h2>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" placeholder="Enter your email" required>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" placeholder="Enter your password" required>
        <button type="submit">Login</button><br><br>
        <a href="#" class="signup-link" >Not a user?</a>
        <button class="signup-btn"><a  href="adminsignup.jsp" id="n1">Sign Up</a></button>
    </div>
</form>
</body>
</html>