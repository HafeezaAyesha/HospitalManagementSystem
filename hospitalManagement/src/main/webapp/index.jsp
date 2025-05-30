<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hospital Management System</title>
    <style>
        :root {
            --primary-green: #00796b;
            --accent-orange: #ff7043;
            --hover-orange: #f4511e;
            --blue: #1976d2;
            --light-bg: #e8f5e9;
            --white: #ffffff;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html, body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: var(--light-bg);
            color: #263238;
            height: 100%;
        }

        body {
            display: flex;
            min-height: 100vh;
        }

        /* Sidebar */
        .sidebar {
            position: fixed;
            top: 0;
            left: 0;
            width: 240px;
            height: 100%;
            background: var(--primary-green);
            color: var(--white);
            padding: 30px 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            box-shadow: 2px 0 10px rgba(0,0,0,0.1);
            z-index: 10;
        }

        .sidebar h2 {
            margin-bottom: 40px;
            font-size: 1.8em;
        }

        .nav-link {
            width: 100%;
            background: var(--accent-orange);
            margin: 10px 0;
            padding: 12px 18px;
            text-decoration: none;
            color: white;
            border-radius: 8px;
            display: flex;
            align-items: center;
            gap: 10px;
            transition: all 0.3s ease;
        }

        .nav-link:hover {
            background: var(--hover-orange);
            transform: translateX(5px);
        }

        .main {
            margin-left: 240px;
            padding: 40px;
            flex-grow: 1;
        }

        .header {
            background-color: var(--primary-green);
            color: white;
            padding: 25px 30px;
            border-radius: 16px;
            margin-bottom: 40px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
        }

        .header h1 {
            font-size: 2.2em;
            margin-bottom: 10px;
        }

        .header p {
            font-size: 1.1em;
            opacity: 0.9;
        }

        .dashboard {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
        }

        .card {
            background: rgba(255, 255, 255, 0.75);
            backdrop-filter: blur(10px);
            border-radius: 16px;
            padding: 25px;
            text-align: center;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .card:hover {
            transform: translateY(-8px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        }

        .card h3 {
            color: var(--blue);
            margin-bottom: 12px;
            font-size: 1.4em;
        }

        .card p {
            font-size: 1em;
            color: #555;
        }

        .footer {
            margin-top: 60px;
            text-align: center;
            color: white;
            background: linear-gradient(90deg, var(--blue), #42a5f5);
            padding: 20px;
            border-radius: 12px;
            font-size: 0.95em;
            box-shadow: 0 -2px 6px rgba(0,0,0,0.1);
        }

        @media (max-width: 768px) {
            .sidebar {
                width: 100%;
                height: auto;
                position: relative;
                flex-direction: row;
                justify-content: space-around;
                padding: 10px;
            }

            .sidebar h2 {
                display: none;
            }

            .nav-link {
                width: auto;
                padding: 10px 14px;
                font-size: 0.95em;
            }

            .main {
                margin-left: 0;
                padding: 20px;
            }

            .header h1 {
                font-size: 1.6em;
            }
        }
    </style>
</head>
<body>

    <div class="sidebar">
        <h2>HMS Menu</h2>
        <a href="patientadd.jsp" class="nav-link">➕ Add Patient</a>
        <a href="patientupdate.jsp" class="nav-link">✏️ Update Patient</a>
        <a href="patientdelete.jsp" class="nav-link">🗑️ Delete Patient</a>
        <a href="DisplayPatientsServlet" class="nav-link">📋 Display Patient</a>
        <a href="reports.jsp" class="nav-link">📊 Reports</a>
    </div>

    <div class="main">
        <div class="header">
            <h1>Hospital Management System</h1>
            <p>Manage patients, doctors, and appointments efficiently</p>
        </div>

        <div class="dashboard">
            <div class="card">
                <h3>Patient Management</h3>
                <p>Easily manage patient records including additions, updates, and deletions.</p>
            </div>
            <div class="card">
                <h3>Doctor Assignments</h3>
                <p>Assign doctors to patients and manage shifts with ease and accuracy.</p>
            </div>
            <div class="card">
                <h3>Reports & Analytics</h3>
                <p>Generate insightful reports and view hospital performance data in real-time.</p>
            </div>
        </div>

       
    </div>

</body>
</html>
