<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sample Maven Web Application</title>

<style>
    body {
        font-family: Arial, Helvetica, sans-serif;
        background: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    .container {
        width: 80%;
        margin: 50px auto;
        background: #ffffff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0,0,0,0.2);
    }

    h1 {
        color: #2c3e50;
        text-align: center;
    }

    h2 {
        color: #16a085;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    table, th, td {
        border: 1px solid #ddd;
    }

    th {
        background-color: #3498db;
        color: white;
        padding: 10px;
    }

    td {
        padding: 10px;
    }

    .footer {
        text-align: center;
        margin-top: 30px;
        color: #777;
    }

    .success {
        color: green;
        font-weight: bold;
    }
</style>

</head>

<body>

<div class="container">

    <h1>🚀 Welcome to Sample Maven Web Application</h1>

    <p class="success">
        Congratulations! Your JSP application is running successfully.
    </p>

    <h2>Project Information</h2>

    <table>
        <tr>
            <th>Property</th>
            <th>Value</th>
        </tr>
        <tr>
            <td>Application Name</td>
            <td>Sample Maven Project</td>
        </tr>
        <tr>
            <td>Technology</td>
            <td>Java, JSP, Servlet, Maven</td>
        </tr>
        <tr>
            <td>Build Tool</td>
            <td>Apache Maven</td>
        </tr>
        <tr>
            <td>Server</td>
            <td>Apache Tomcat</td>
        </tr>
        <tr>
            <td>Status</td>
            <td>Running Successfully ✅</td>
        </tr>
        <tr>
            <td>Current Date & Time</td>
            <td><%= new java.util.Date() %></td>
        </tr>
    </table>

    <h2>Server Details</h2>

    <ul>
        <li><strong>Java Version:</strong> <%= System.getProperty("java.version") %></li>
        <li><strong>Operating System:</strong> <%= System.getProperty("os.name") %></li>
        <li><strong>User:</strong> <%= System.getProperty("user.name") %></li>
        <li><strong>Context Path:</strong> <%= request.getContextPath() %></li>
        <li><strong>Request Method:</strong> <%= request.getMethod() %></li>
        <li><strong>Client IP:</strong> <%= request.getRemoteAddr() %></li>
    </ul>

    <h2>About This Project</h2>

    <p>
        This is a sample Java Maven web application using JSP.
        It demonstrates successful deployment on an Apache Tomcat server
        and can be integrated with Jenkins CI/CD pipelines for automated builds.
    </p>

    <div class="footer">
        <hr>
        <p>
            Developed using Java • JSP • Maven • Tomcat
        </p>
    </div>

</div>

</body>
</html>
