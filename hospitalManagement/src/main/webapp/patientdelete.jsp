<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Patient</title>
    <style>
        :root {
            --primary-red: #d32f2f;
            --hover-red: #b71c1c;
            --light-bg: #fffafa;
            --glass-white: rgba(255, 255, 255, 0.8);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #ffebee, #ffcdd2);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .header {
            width: 100%;
            background: linear-gradient(90deg, var(--primary-red), #ef5350);
            color: white;
            padding: 30px 0;
            text-align: center;
            box-shadow: 0 4px 10px rgba(0,0,0,0.15);
        }

        .form-container {
            margin-top: 50px;
            background: var(--glass-white);
            backdrop-filter: blur(10px);
            padding: 40px;
            border-radius: 20px;
            width: 90%;
            max-width: 500px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
        }

        .form-container h2 {
            color: var(--primary-red);
            margin-bottom: 30px;
            text-align: center;
        }

        .form-group {
            position: relative;
            margin-bottom: 30px;
        }

        .form-group label {
            position: absolute;
            top: -10px;
            left: 12px;
            background-color: var(--glass-white);
            padding: 0 5px;
            font-size: 0.85em;
            color: #333;
        }

        .form-group input[type="number"] {
            width: 100%;
            padding: 14px 12px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 1em;
            background: white;
            transition: border-color 0.3s;
        }

        .form-group input[type="number"]:focus {
            border-color: var(--primary-red);
            outline: none;
        }

        .submit-btn {
            width: 100%;
            padding: 14px;
            font-size: 1.1em;
            border: none;
            border-radius: 10px;
            background-color: var(--primary-red);
            color: white;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .submit-btn:hover {
            background-color: var(--hover-red);
        }

        .back-link {
            text-align: center;
            margin-top: 20px;
        }

        .back-link a {
            text-decoration: none;
            color: var(--primary-red);
            font-weight: bold;
        }

        .back-link a:hover {
            text-decoration: underline;
        }

        @media (max-width: 600px) {
            .form-container {
                padding: 30px 20px;
            }
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>Delete Patient Record</h1>
        <p>Remove an existing patient from the system</p>
    </div>

    <div class="form-container">
        <h2>Enter Patient ID</h2>
        <form action="DeletePatientServlet" method="post">
            <div class="form-group">
                <label for="id">Patient ID</label>
                <input type="number" id="id" name="id" placeholder="Enter Patient ID" required>
            </div>
            <input type="submit" class="submit-btn" value="Delete Patient">
        </form>

        <div class="back-link">
            <a href="index.jsp">&larr; Back to Home</a>
        </div>
    </div>

</body>
</html>
