<%-- 
    Document   : index
    Created on : 13 Apr, 2023, 3:45:11 PM
    Author     : Indu Redhu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body
        <div class="login-page">
      <div class="form">
        <div class="login">
          <div class="login-header">
        <h3>DO YOU WANT TO WORK ON JAVA SWING OR JSP</h3>
        </div>
        </div>
        <form action="index1.jsp">
            <button type="button" value="jsp" onclick=window.location.href='index1.jsp'>JSP</button>
            
       </form>
          <br/>
        <form action="swing.jsp">
            <button type="button" value="swing" onclick=window.location.href='swing.jsp'>SWING</button>
        </form>
          </div>
    </div>
    </body>
</html>
