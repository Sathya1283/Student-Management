<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 body {
             background: linear-gradient(135deg, #11998e, #38ef7d);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .add-box {
             background-color: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            width: 400px;
        }

        .add-box h2 {
            margin-bottom: 20px;
            color: #343a40;
        }

        .add-box label {
            margin: 8px 0;
            display: block;
            color: #495057;
            font-weight: 600;
        }

        .add-box input[type="text"], .add-box input[type="number"] {
            width: 100%;
            padding: 12px;
            margin: 5px 0 15px;
            border-radius: 8px;
            border: 1px solid #ced4da;
            background-color: #f1f3f5;
            box-sizing: border-box;
            transition: border-color 0.3s ease;
        }

        .add-box input:focus {
            border-color: #0d6efd;
            outline: none;
        }

        .error {
            border-color: red;
        }

        .add-box button {
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

        .add-box button:hover {
            background-color: #0a58ca;
        }
    </style>
</head>
<body>
<form action="add" method="post">
  <div class="add-box">
   <h2>Add Student</h2>
        <label for="id">ID</label>
        <input type="text" id="id" name="id" required>
        <label for="name">Name</label>
        <input type="text" id="name" name="name" required>
        <label for="physics">Physics</label>
        <input type="number" id="physics" name="physics" required>
         <label for="chemistry">Chemistry</label>
        <input type="number" id="chemistry" name="chemistry" required>
        <label for="maths">Maths</label>
        <input type="number" id="maths" name="maths" required >
        <button type="submit">Submit</button>
        </div>
</form>
</body>
</html>