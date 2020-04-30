<%@ include file="../includes/jsp_jstl.jsp"%>
<!doctype html>
<html lang="en">
    <head>
        <%@ include file="../includes/head.jsp"%>
    </head>
    <body>
        <%@ include file="../includes/navbar.jsp"%>
        <div class="container">
            <div class="row">
                <div class="offset-md-3 col-md-6">
                    <h2>Register first!</h2>
                </div>
            </div>
            <div class="row">
                <div class="offset-md-3 col-md-6">
                    <form method="post" name="registerForm">
                        <input type="hidden" name="contextPath" value="${pageContext.request.contextPath}">
                        <div class="alert alert-danger" style="display: <c:out value="${requestScope.displayError}"/>" id="errors">
                            <c:out value="${requestScope.error}"/>
                        </div>
                        <div class="alert alert-success" style="display: <c:out value="${requestScope.displaySuccess}"/>" id="success">
                            <c:out value="${requestScope.success}"/>
                            <a href="login">Login here</a>
                        </div>
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input type="text" class="form-control" id="username" name="username" onkeyup="validateUsername()">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" id="password" name="password">
                        </div>
                        <div class="form-group">
                            <label for="passwordConfirm">Password Confirm</label>
                            <input type="password" class="form-control" id="passwordConfirm" name="passwordConfirm">
                        </div>
                        <button type="button" class="btn btn-primary" onClick="validateForm();">Register</button>
                    </form>
                </div>
            </div>

        </div>
        <jsp:include page="../includes/body_js_includes.jsp"/>
        <script type="text/javascript" src="resources/js/register.js"></script>
        </body>
</html>
