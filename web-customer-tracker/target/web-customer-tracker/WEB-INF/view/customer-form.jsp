<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Save Customer</title>
    <!-- reference our style sheet -->
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
<div class="wrapper container" id="wrapper">
    <div class="header-panel" id="header">
        <h2>CRM - Customer Relationship Manager</h2>
    </div>
</div>

<div class="container" id="container">
    <h3>
        Save Customer
    </h3>
    <form:form action="saveCustomer" modelAttribute="customer" method="post">

        <!-- need to associate this data with customer id -->
        <form:hidden path="id"/>
        <table>
            <tbody>
            <tr>
                <td><label>First name: </label></td>
                <td><form:input path="firstName"/></td>
            </tr>
            <tr>
                <td><label>Last name: </label></td>
                <td><form:input path="lastName"/></td>
            </tr>
            <tr>
                <td><label>email: </label></td>
                <td><form:input path="email"/></td>
            </tr>
            <tr>
                <td><label></label></td>
                <td><input type="submit" value="Save" class="btn btn-primary my-button"></td>
            </tr>
            </tbody>
        </table>
    </form:form>

    <div class="section">
        <input type="button" class="btn btn-primary my-button" value="Back to list"
               onclick="window.location.href='list'"
        />
    </div>
</div>
</body>
</html>
