<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">

<head>

    <title>Login Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Reference Bootstrap files -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/834c81cda6.js" crossorigin="anonymous"></script>

</head>

<body>

<div>

    <div id="loginbox" style="margin-top: 50px;"
         class="container col-md-3 col-md-offset-2 col-sm-6 col-sm-offset-2">

        <div class="card card-info border-info">

            <div class="card-header text-white bg-info">
                <div class="card-title"><h4>Sign In</h4></div>
            </div>

            <div style="padding-top: 30px" class="card-body">

                <!-- Login Form -->
                <form:form action="${pageContext.request.contextPath}/authenticateTheUser"
                           method="post" class="form-horizontal">

                    <!-- Place for messages: error, alert etc ... -->
                    <div class="form-group">
                        <div class="col-xs-15">
                            <div>
                                <!-- Check for login error! -->
                                <c:if test="${param.error != null}">
                                    <div class="alert alert-danger col-xs-offset-1 col-xs-10">
                                        Invalid username and password.
                                    </div>
                                </c:if>

                                <!--
                                <div class="alert alert-success col-xs-offset-1 col-xs-10">
                                    You have been logged out.
                                </div>
                                -->

                            </div>
                        </div>
                    </div>

                    <!-- User name -->
                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-text"><i class="fas fa-user"></i></span>

                        <input type="text" name="username" placeholder="username" class="form-control">
                    </div>

                    <!-- Password -->
                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-text"><i class="fas fa-lock"></i></span>

                        <input type="password" name="password" placeholder="password" class="form-control">
                    </div>

                    <!-- Login/Submit Button -->
                    <div style="margin-top: 10px" class="form-group">
                        <div class="col-sm-6 controls">
                            <button type="submit" class="btn btn-primary">Login</button>
                        </div>
                    </div>

                </form:form>

            </div>

        </div>

    </div>

</div>
</body>
</html>
