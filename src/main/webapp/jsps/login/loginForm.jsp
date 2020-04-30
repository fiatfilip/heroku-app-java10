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
                    <h2>Login first!</h2>
                </div>
            </div>
            <div class="row">
                <div class="offset-md-3 col-md-6">
                    <form method="post">
                        <div class="alert alert-danger" style="display: <c:out value="${requestScope.display}"/>">
                            <c:out value="${requestScope.error}"/>
                        </div>
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input type="text" class="form-control" id="username" name="username">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" id="password" name="password">
                        </div>
                        <button type="submit" class="btn btn-primary">Login</button>
                    </form>
                </div>
            </div>

        </div>
        <jsp:include page="../includes/body_js_includes.jsp"/>
        </body>
</html>
