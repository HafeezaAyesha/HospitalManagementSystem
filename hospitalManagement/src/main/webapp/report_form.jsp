<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Report Criteria</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4fdfb;
        }

        .top-bar {
            background-color: #00695c;
            color: #ffffff;
            padding: 20px;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
        }

        .navbar {
            display: flex;
            justify-content: center;
            gap: 20px;
            background-color: #004d40;
            padding: 10px;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 10px 15px;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #00796b;
        }

        .form-wrapper {
            max-width: 450px;
            margin: 40px auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .form-wrapper h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #00695c;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: 600;
            margin-bottom: 8px;
            color: #333;
        }

        .form-group input {
            width: 100%;
            padding: 12px;
            font-size: 15px;
            border-radius: 6px;
            border: 1px solid #ccc;
            outline: none;
            transition: border-color 0.2s;
        }

        .form-group input:focus {
            border-color: #00bfa5;
        }

        .submit-btn {
            width: 100%;
            background-color: #00695c;
            color: white;
            padding: 12px;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #004d40;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #00796b;
            text-decoration: none;
            font-weight: 500;
        }

        .back-link:hover {
            text-decoration: underline;
        }

        @media (max-width: 600px) {
            .form-wrapper {
                margin: 20px;
                padding: 20px;
            }

            .navbar {
                flex-direction: column;
                align-items: center;
            }
        }
    </style>
</head>
<body>

    <div class="top-bar">
        Hospital Management System
    </div>

    

    <div class="form-wrapper">
        <h2>Report Criteria</h2>
        <%
            String reportType = (String) request.getAttribute("reportType");
        %>
        <form action="ReportServlet" method="post">
            <input type="hidden" name="reportType" value="<%= reportType %>">

            <% if ("dateRange".equals(reportType)) { %>
                <div class="form-group">
                    <label for="startDate">Start Date:</label>
                    <input type="date" id="startDate" name="startDate" required>
                </div>
                <div class="form-group">
                    <label for="endDate">End Date:</label>
                    <input type="date" id="endDate" name="endDate" required>
                </div>
            <% } else if ("ailment".equals(reportType)) { %>
                <div class="form-group">
                    <label for="ailment">Ailment:</label>
                    <input type="text" id="ailment" name="ailment" placeholder="Enter ailment (e.g., Fever)" required>
                </div>
            <% } else if ("doctor".equals(reportType)) { %>
                <div class="form-group">
                    <label for="doctor">Doctor Name:</label>
                    <input type="text" id="doctor" name="doctor" placeholder="Enter doctor's name" required>
                </div>
            <% } %>

            <button type="submit" class="submit-btn">Generate Report</button>
        </form>

        <a class="back-link" href="reports.jsp">← Back to Reports</a>
    </div>
</body>
</html>
