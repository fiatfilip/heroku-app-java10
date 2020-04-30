<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">HerokuApp</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav nav-pills">
            <li class="nav-item ${requestScope.loginActive} ${requestScope.hiddenLoggedIn}">
                <a class="nav-link" href="${pageContext.request.contextPath}/login">Login </a>
            </li>
            <li class="nav-item ${requestScope.registerActive} ${requestScope.hiddenLoggedIn}">
                <a class="nav-link" href="${pageContext.request.contextPath}/register">Register</a>
            </li>
            <li class="nav-item ${requestScope.entityActive} ${requestScope.visibleLoggedIn}">
                <a class="nav-link" href="${pageContext.request.contextPath}/entity">Entities</a>
            </li>
            <li class="nav-item ${requestScope.visibleLoggedIn}">
                <a class="nav-link" href="${pageContext.request.contextPath}/logout">Logout</a>
            </li>
        </ul>

    </div>
</nav>