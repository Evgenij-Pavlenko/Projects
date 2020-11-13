<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List Customer</title>

    <!-- reference our style sheet -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<div class="wrapper" id="wrapper">
    <div class="header-panel" id="header">
        <h2>CRM - Customer Relationship Manager</h2>
    </div>
</div>

<div class="container" id="container">
    <div class="content" id="content">

        <!-- put new button: Add Customer -->

        <input type="button" class="btn btn-primary add-button" value="Add Customer"
               onclick="window.location.href='showFormForAdd'; return false;"
        />
        <!-- add our html table -->
        <table class="table-striped table">
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
            </tr>
            <!-- Loop over and print our customers -->
            <c:forEach var="tempCustomer" items="${customers}">
                <tr>
                    <td>${tempCustomer.firstName}</td>
                    <td>${tempCustomer.lastName}</td>
                    <td>${tempCustomer.email}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
