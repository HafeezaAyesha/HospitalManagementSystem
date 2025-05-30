<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Generate Reports</title>
    <style>
        :root {
            --primary: #2e7d32;
            --accent: #66bb6a;
            --bg: #f0f4f8;
            --text: #333;
            --card-bg: rgba(255, 255, 255, 0.95);
        }

        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #e0f2f1, #f1f8e9);
            color: var(--text);
        }

        .header {
            background: linear-gradient(to right, var(--primary), var(--accent));
            color: white;
            padding: 30px 20px;
            text-align: center;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .nav {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            background-color: var(--primary);
            padding: 10px 0;
        }

        .nav a {
            color: white;
            text-decoration: none;
            padding: 10px 25px;
            margin: 5px 10px;
            border-radius: 6px;
            transition: background 0.3s;
        }

        .nav a:hover {
            background-color: #1b5e20;
        }

        .container {
            max-width: 1100px;
            margin: 40px auto;
            padding: 20px;
            background: var(--card-bg);
            border-radius: 16px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
        }

        .container h2 {
            text-align: center;
            color: var(--primary);
            margin-bottom: 30px;
        }

        .report-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 25px;
        }

        .report-card {
            background: white;
            border-left: 6px solid var(--accent);
            border-radius: 12px;
            padding: 20px;
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.06);
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        .report-card:hover {
            transform: translateY(-4px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
        }

        .report-card h3 {
            color: var(--primary);
            margin-top: 0;
        }

        .report-card p {
            margin-bottom: 15px;
            font-size: 0.95em;
        }

        .report-link {
            display: inline-block;
            background-color: var(--primary);
            color: white;
            padding: 10px 16px;
            text-decoration: none;
            border-radius: 6px;
            font-weight: bold;
        }

        .report-link:hover {
            background-color: #1b5e20;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 30px;
            font-size: 1em;
            color: var(--primary);
            text-decoration: none;
        }

        .back-link:hover {
            text-decoration: underline;
        }

        @media (max-width: 600px) {
            .report-card {
                padding: 16px;
            }

            .report-link {
                width: 100%;
                text-align: center;
            }
        }
    </style>
</head>
<body>

    <div class="header">
        <h1>Hospital Management System</h1>
        <p>Report Generation Dashboard</p>
    </div>

    

    <div class="container">
        <h2>Select a Report to Generate</h2>

        <div class="report-grid">
            <div class="report-card">
                <h3>Patients Admitted in Date Range</h3>
                <p>Get a report of all patients admitted between specific dates for statistical and operational review.</p>
                <a href="ReportCriteriaServlet?reportType=dateRange" class="report-link">Generate Report</a>
            </div>

            <div class="report-card">
                <h3>Patients with Specific Ailment</h3>
                <p>Filter and view patients diagnosed with a particular ailment or health condition.</p>
                <a href="ReportCriteriaServlet?reportType=ailment" class="report-link">Generate Report</a>
            </div>

            <div class="report-card">
                <h3>Patients Assigned to Specific Doctor</h3>
                <p>Generate a summary of patients under the care of a chosen doctor for review or audits.</p>
                <a href="ReportCriteriaServlet?reportType=doctor" class="report-link">Generate Report</a>
            </div>
        </div>

        <a href="index.jsp" class="back-link">← Back to Home</a>
    </div>

</body>
</html>
