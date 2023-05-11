<%@page import="java.util.Date,java.text.SimpleDateFormat" %>

<%
SimpleDateFormat df=new SimpleDateFormat("ddMMyyyy");
Date d=new Date();
String cdate=df.format(d);
String uname= request.getParameter("uname");
String upass = request.getParameter("upass");
if(uname.equals("hhim") && upass.equals(cdate))
{%>
<head>
<link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="login-page">
      <div class="form">
        <div class="login">
    <div class="login-header">
            <h3>Placement Database</h3>
            <p>Please select Company and Year.</p>
          </div>
            </div>
 <form class="login-form" action="resultpage.jsp">
      
      <label for="comp" >Company</label>
      <br>
      <select name="companies" id="comp">
        <option value="GOOGLE">Google</option>
        <option value="APPLE">Apple</option>
        <option value="AMAZON">Amazon</option>
        <option value="TCS">TCS</option>
        <option value="MS">MS</option>
      </select>
      <br>
      <label for="syear">Year</label>
      <br>
      <select name="syear" id="syr"> 
        <option value="2022">2022</option>
        <option value="2016">2016</option>
        <option value="2020">2020</option>
        <option value="2019">2019</option>
        <option value="2023">2023</option>
      </select>
      <br>
      <button type="submit" >Submit</button>
</form>
     </div>
    </div>
</body>
<%}
else
{
    out.println("ERROR");%>
    <a href="index.jsp">LOGIN PAGE</a><%
}%>
     