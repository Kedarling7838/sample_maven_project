```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sample Maven Web Application</title>

<style>
    body{
        margin:0;
        padding:0;
        font-family:Arial, sans-serif;
        background:#f5f7fa;
    }
    .container{
        width:80%;
        margin:40px auto;
        background:#fff;
        padding:30px;
        border-radius:10px;
        box-shadow:0 0 15px rgba(0,0,0,0.15);
    }
    h1{
        color:#2c3e50;
        text-align:center;
    }
    h2{
        color:#0077b6;
        border-bottom:2px solid #ddd;
        padding-bottom:5px;
    }
    table{
        width:100%;
        border-collapse:collapse;
        margin-top:15px;
    }
    table, th, td{
        border:1px solid #ccc;
    }
    th{
        background:#0077b6;
        color:white;
        padding:10px;
    }
    td{
        padding:10px;
    }
    .success{
        color:green;
        font-size:18px;
        font-weight:bold;
        text-align:center;
    }
    .footer{
        margin-top:30px;
        text-align:center;
        color:#666;
        font-size:14px;
    }
</style>

</head>
<body>

<div class="container">

    <h1>🚀 Maven Web Application</h1>

    <p class="success">
        Application deployed successfully on Apache Tomcat!
    </p>

    <h2>Application Details</h2>

    <table>
        <tr>
            <th>Property</th>
            <th>Value</th>
        </tr>
        <tr>
            <td>Application Name</td>
            <td>Sample Maven Web Application</td>
        </tr>
        <tr>
            <td>Technology Stack</td>
            <td>Java, JSP, Maven, Apache Tomcat</td>
        </tr>
        <tr>
            <td>Deployment Status</td>
            <td>Running Successfully ✅</td>
        </tr>
        <tr>
            <td>Build Tool</td>
            <td>Apache Maven</td>
        </tr>
        <tr>
            <td>Current Time</td>
            <td><%= new java.util.Date() %></td>
        </tr>
    </table>

    <h2>Server Information</h2>

    <table>
        <tr>
            <th>Item</th>
            <th>Value</th>
        </tr>
        <tr>
            <td>Java Version</td>
            <td><%= System.getProperty("java.version") %></td>
        </tr>
        <tr>
            <td>Operating System</td>
            <td><%= System.getProperty("os.name") %></td>
        </tr>
        <tr>
            <td>Server User</td>
            <td><%= System.getProperty("user.name") %></td>
        </tr>
        <tr>
            <td>Context Path</td>
            <td><%= request.getContextPath() %></td>
        </tr>
        <tr>
            <td>HTTP Method</td>
            <td><%= request.getMethod() %></td>
        </tr>
        <tr>
            <td>Client IP</td>
            <td><%= request.getRemoteAddr() %></td>
        </tr>
    </table>

    <h2>CI/CD Status</h2>

    <ul>
        <li>✔ Source Code: GitHub</li>
        <li>✔ Build Tool: Maven</li>
        <li>✔ CI Server: Jenkins</li>
        <li>✔ Application Server: Apache Tomcat</li>
        <li>✔ Deployment: Successful</li>
    </ul>

    <div class="footer">
        <hr>
        <p>Developed using Java • JSP • Maven • Jenkins • Apache Tomcat</p>
    </div>

</div>

</body>
</html>
```
