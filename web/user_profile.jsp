<%@page import="java.sql.*" %>
<% 
String result=request.getParameter("result");

//out.println(result);
      String url = "jdbc:derby://localhost:1527/indu";
        String username = "mani";
        String password = "manin";
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection(url,username,password);
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from abc where id="+result);
            while(rs.next())
            {%>
            <head>
<link rel="stylesheet" href="styles.css">
<title> Our Java App </title>
</head>
<body>
            <div class="login-page">
      <div class="form">
        <div class="login">
          <div class="login-header">
            <h3>Student Data</h3>
          </div>
        </div><%
                out.println("Id = "+rs.getString("id")) ;%><br>
                <%out.println("Name = "+rs.getString("sname"));%><br>
                <%out.println("Company Name = "+rs.getString("cname"));%><br>
                <%out.println("Year = "+rs.getString("batch"));%><br>
                <%out.println("Age = "+rs.getString("age"));%><br>
                <%out.println("E-mail = "+rs.getString("email"));%><br><%
             }
            con.close();
        }
        catch(Exception e) {
        System.out.println(e);
        }

%>
</div>
    </div>
</body>