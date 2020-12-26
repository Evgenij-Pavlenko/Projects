<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>List Customer</title>

    <!-- reference our style sheet -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<div class="container" id="container">
    <div id="wrapper">
        <div id="header">
            <h2>CRM - Customer Relationship Manager</h2>
        </div>
    </div>

    <div class="content" id="content">

        <security:authorize access="hasAnyRole('MANAGER', 'ADMIN')">
            <!-- put new button: Add Customer -->
            <div class="section">
                <input type="button" class="btn btn-primary my-button" value="Add Customer"
                       onclick="window.location.href='showFormForAdd'; return false;"
                />
            </div>
        </security:authorize>

        <!--  add a search box -->
        <div class="section">
            <form:form action="search" method="GET">
                Search customer: <input type="text" name="theSearchName"/>
                <input type="submit" value="Search" class="btn btn-primary my-button"/>
            </form:form>
        </div>
        <!-- add our html table -->
        <table class="table-striped table">
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <!-- Only show "Action" column for managers or admin -->
                <security:authorize access="hasAnyRole('MANAGER', 'ADMIN')">

                    <th>Action</th>

                </security:authorize>
            </tr>
            <!-- loop over and print our customers -->
            <c:forEach var="tempCustomer" items="${customers}">

                <!-- construct an "update" link with customer id -->
                <c:url var="updateLink" value="/customer/showFormForUpdate">
                    <c:param name="customerId" value="${tempCustomer.id}"/>
                </c:url>

                <!-- construct an "delete" link with customer id -->
                <c:url var="deleteLink" value="/customer/delete">
                    <c:param name="customerId" value="${tempCustomer.id}"/>
                </c:url>

                <tr>
                    <td> ${tempCustomer.firstName} </td>
                    <td> ${tempCustomer.lastName} </td>
                    <td> ${tempCustomer.email} </td>

                    <security:authorize access="hasAnyRole('MANAGER', 'ADMIN')">
                        <td>
                                <%--                                <security:authorize access="hasAnyRole('MANAGER', 'ADMIN')">--%>
                            <!-- display the update link -->
                            <a href="${updateLink}">Update</a>
                                <%--                                </security:authorize>--%>
                            <security:authorize access="hasRole('ADMIN')">
                                |
                                <a href="${deleteLink}"
                                   onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
                            </security:authorize>
                        </td>
                    </security:authorize>
                </tr>

            </c:forEach>
        </table>

        <!-- Add a logout button -->
        <form:form action="${pageContext.request.contextPath}/logout"
                   method="POST">

            <input type="submit" value="Logout" class="btn btn-primary add-button"/>

        </form:form>
        <div>
            <a href="${pageContext.request.contextPath}/register/showRegistrationForm" class="btn btn-primary"
               role="button" aria-pressed="true">Register New User</a>
        </div>
    </div>

</div>
</body>
</html>
