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
        }

        .signup-box {
             background-color: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            width: 400px;
        }

        .signup-box h2 {
            margin-bottom: 20px;
            color: #343a40;
        }

        .signup-box label {
            margin: 8px 0;
            display: block;
            color: #495057;
            font-weight: 600;
        }

        .signup-box input[type="text"], .signup-box input[type="email"], .signup-box input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 5px 0 15px;
            border-radius: 8px;
            border: 1px solid #ced4da;
            background-color: #f1f3f5;
            box-sizing: border-box;
            transition: border-color 0.3s ease;
        }

        .signup-box input:focus {
            border-color: #0d6efd;
            outline: none;
        }

        .error {
            border-color: red;
        }

        .signup-box button {
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

        .signup-box button:hover {
            background-color: #0a58ca;
        }
        #n1{
        text-decoration: none;
          color:white;
        }
    </style>
    <script>
        function validatePassword() {
            const password = document.getElementById("password").value;
            const repassword = document.getElementById("repassword");
            if (password !== repassword.value && repassword.value !== "") {
                repassword.classList.add("error");
            } else {
                repassword.classList.remove("error");
            }
        }
    </script>
</head>
<body>
<form action="student1" method="post">
 <div class="signup-box">
        <h2>Signup</h2>
        <label for="id">ID</label>
        <input type="text" id="id" name="id" required>
        <label for="name">Name</label>
        <input type="text" id="name" name="name" required>
        <label for="email">Email</label>
        <input type="email" id="email" name="email" required>
         <label for="contact">Contact</label>
        <input type="text" id="contact" name="contact" required>
        <label for="password">Password</label>
        <input type="password" id="password" name="password" required oninput="validatePassword()">
        <label for="repassword">Re-enter Password</label>
        <input type="password" id="repassword" name="repassword" required oninput="validatePassword()">
        <button type="submit">Submit</button>
    </div>
</form>
</body>
</html>