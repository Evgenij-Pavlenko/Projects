<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Save Customer</title>
    <!-- reference our style sheet -->
<%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"--%>
<%--          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">--%>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
</head>
<body>
<div class="wrapper" id="wrapper">
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
                <td><input type="submit" value="Save" class="save"></td>
            </tr>
            </tbody>
        </table>
    </form:form>

<%--    <div style="clear: both;"></div>--%>

    <p>
        <a href="${pageContext.request.contextPath}/customer/list">Back to list</a>
    </p>
</div>
</body>
</html>
