<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Patient</title>
    <style>
        :root {
            --primary-green: #00796b;
            --accent-blue: #1976d2;
            --dark-blue: #0d47a1;
            --background: #e8f5e9;
            --white: #ffffff;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', sans-serif;
            background: var(--background);
            color: #263238;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }

        .header {
            background-color: var(--primary-green);
            color: white;
            padding: 30px;
            width: 100%;
            text-align: center;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }

        .form-wrapper {
            background: rgba(255, 255, 255, 0.85);
            backdrop-filter: blur(8px);
            margin: 50px auto;
            padding: 40px;
            border-radius: 20px;
            max-width: 600px;
            width: 90%;
            box-shadow: 0 8px 24px rgba(0,0,0,0.12);
        }

        .form-wrapper h2 {
            text-align: center;
            margin-bottom: 30px;
            color: var(--accent-blue);
            font-size: 1.8em;
        }

        .form-group {
            position: relative;
            margin-bottom: 25px;
        }

        .form-group label {
            position: absolute;
            top: -10px;
            left: 12px;
            background: rgba(255, 255, 255, 0.85);
            padding: 0 6px;
            font-size: 0.85em;
            color: #333;
        }

        .form-group input,
        .form-group select {
            width: 100%;
            padding: 14px 12px;
            border: 1px solid #ccc;
            border-radius: 8px;
            background: white;
            font-size: 1em;
            transition: border 0.3s ease;
        }

        .form-group input:focus,
        .form-group select:focus {
            border-color: var(--accent-blue);
            outline: none;
        }

        .submit-btn {
            width: 100%;
            padding: 14px;
            background: var(--accent-blue);
            color: white;
            font-size: 1.1em;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .submit-btn:hover {
            background: var(--dark-blue);
        }

        .back-link {
            text-align: center;
            margin-top: 20px;
        }

        .back-link a {
            color: var(--accent-blue);
            font-weight: 600;
            text-decoration: none;
            transition: color 0.2s ease;
        }

        .back-link a:hover {
            text-decoration: underline;
            color: var(--dark-blue);
        }

        @media (max-width: 600px) {
            .form-wrapper {
                padding: 30px 20px;
            }

            .form-wrapper h2 {
                font-size: 1.5em;
            }
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>Update Patient Information</h1>
        <p>Modify details of an existing patient</p>
    </div>

    <div class="form-wrapper">
        <h2>Edit Patient Details</h2>
        <form action="UpdatePatientServlet" method="post">
            <div class="form-group">
                <label for="id">Patient ID</label>
                <input type="number" id="id" name="id" required>
            </div>

            <div class="form-group">
                <label for="name">Patient Name</label>
                <input type="text" id="name" name="name" required>
            </div>

            <div class="form-group">
                <label for="age">Age</label>
                <input type="number" id="age" name="age" required>
            </div>

            <div class="form-group">
                <label for="gender">Gender</label>
                <select name="gender" id="gender" required>
                    <option value="">-- Select --</option>
                    <option>Male</option>
                    <option>Female</option>
                    <option>Other</option>
                </select>
            </div>

            <div class="form-group">
                <label for="admissionDate">Admission Date</label>
                <input type="date" id="admissionDate" name="admissionDate" required>
            </div>

            <div class="form-group">
                <label for="ailment">Ailment</label>
                <input type="text" id="ailment" name="ailment" required>
            </div>

            <div class="form-group">
                <label for="doctor">Assigned Doctor</label>
                <input type="text" id="doctor" name="doctor" required>
            </div>

            <input type="submit" class="submit-btn" value="Update Patient">
        </form>

        <div class="back-link">
            <a href="index.jsp">&larr; Back to Home</a>
        </div>
    </div>

</body>
</html>
