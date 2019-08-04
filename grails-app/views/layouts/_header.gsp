<%@ page import="grailswebapp.User" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
            </li>
        </ul>

        <sec:ifLoggedIn>
            <span class="text-white">Welcome ${sec.loggedInUserInfo(field: 'username')}</span>
            &nbsp;
            <form action="${createLink(controller: 'logout')}" method="POST">
                <input type="submit" value="Logout" class="">
            </form>

            %{--<a href="${createLink(controller: 'logout')}" class="black-text"> Logout </a>--}%
        </sec:ifLoggedIn>
        <sec:ifNotLoggedIn>
            <a href="${createLink(controller: 'login')}">Login</a>
        </sec:ifNotLoggedIn>
    </div>
</nav>