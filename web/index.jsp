<%-- 
    Document   : welcomePage
    Created on : 20 Nov 2022, 4:05:15 PM
    Author     : simondarota
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <title>Welcome</title>
    </head>
    <body>
         <jsp:include page='templete.jsp'/>
        <div style="width: fit-content;
             height: 80px;
             text-align: center;
             align-content: center;
             background: #4C49D8;
             border-radius: 120px;
             margin: 20px">
            <h1 style="padding: 20px; color: white">Welcome to Peer Mentor!</h1>
        </div>
        <div style="flex-direction: horizontal; align-content: center; margin: 100px">
            <a href="login.jsp" class="btn btn-primary">Login</a>
            <a href="signup.jsp" class="btn btn-primary">Sign Up</a>
        </div>

    </body>
</html>
