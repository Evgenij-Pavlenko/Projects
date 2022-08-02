<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <title>My company Home Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

</head>
<body>
<div class="container">
    <h2>
        My company Home Page
    </h2>
    <hr>
    <p>
        Welcome to the my company home page!
    </p>
    <hr>

    <!-- display user name and role -->

    <p>
        User: <security:authentication property="principal.username"/>
        <br><br>
        Role(s): <security:authentication property="principal.authorities"/>
    </p>

    <security:authorize access="hasRole('MANAGER')">

        <!-- Add a link to point to /leaders... this is for the managers -->


        <p>
            <a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
            (Only for Manager people)
        </p>

    </security:authorize>

    <security:authorize access="hasRole('ADMIN')">
        <!-- Add a link to point to /systems... this is for the admins -->

        <p>
            <a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
            (Only for Admin people)
        </p>

    </security:authorize>
    <hr>
    <!-- Add a logout button -->

    <form:form action="${pageContext.request.contextPath}/logout" method="post">
        <input class="btn btn-primary" type="submit" value="Logout">
    </form:form>
</div>
</body>
</html>
