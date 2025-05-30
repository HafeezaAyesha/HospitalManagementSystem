<%@ page import="java.util.*, com.model.Patient" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Patients</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #e8f5e9;
            margin: 0;
        }
        .header {
            background: #00796b;
            padding: 20px;
            color: white;
            text-align: center;
        }
        table {
            width: 90%;
            margin: 40px auto;
            border-collapse: collapse;
            background: grey;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 12px 15px;
            border-bottom: 1px solid #ddd;
            text-align: center;
        }
        th {
            background-color: #00796b;
            color: white;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        .back-link {
            text-align: center;
            margin-top: 20px;
        }
        .back-link a {
            text-decoration: none;
            color: #1976d2;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>All Patients</h1>
    </div>
    <table>
        <tr>
            <th>ID</th><th>Name</th><th>Age</th><th>Gender</th><th>Admission Date</th><th>Ailment</th><th>Doctor</th>
        </tr>
        <%
            List<Patient> patients = (List<Patient>) request.getAttribute("listPatient");
            if (patients != null) {
                for (Patient p : patients) {
        %>
        <tr>
            <td><%= p.getPatientID() %></td>
            <td><%= p.getPatientName() %></td>
            <td><%= p.getAge() %></td>
            <td><%= p.getGender() %></td>
            <td><%= p.getAdmissionDate() %></td>
            <td><%= p.getAilment() %></td>
            <td><%= p.getAssignedDoctor() %></td>
        </tr>
        <% }} %>
    </table>
    <div class="back-link">
        <a href="index.jsp">&larr; Back to Home</a>
    </div>
</body>
</html>
