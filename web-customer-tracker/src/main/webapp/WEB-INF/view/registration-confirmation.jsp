<html>

<head>
    <title>Registration Confirmation</title>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/834c81cda6.js" crossorigin="anonymous"></script>

</head>

<body>
<div class="container">
    <h2>User registered successfully!</h2>

    <hr>

    <div class="section">
        <input type="button" class="btn btn-primary my-button" value="Login"
               onclick="window.location.href='${pageContext.request.contextPath}/showMyLoginPage'"/>
    </div>
</div>
</body>

</html>
