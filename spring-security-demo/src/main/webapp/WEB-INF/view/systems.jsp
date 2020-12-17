<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>LEADERS Home Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
<div class="container">

    <h2>SYSTEMS Home Page</h2>
    <hr>

    <p>
        We have our annual holiday Ukraine travel coming up. Register now!
        <br>
        Keep this trip a secret, don't tell the regular employees ))
    </p>
    <br>
    <form:form action="${pageContext.request.contextPath}/" method="get">
        <input class="btn btn-primary" type="submit" value="Home page">
    </form:form>
</div>
</body>
</html>
