<%@ page import="java.sql.*" %>
<%
String name=request.getParameter("name");
String num=request.getParameter("num");
String username=request.getParameter("username");
String password=request.getParameter("password");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance","root","smitha");
	Statement st=con.createStatement();
	String sql="insert into usersignup values('"+name+"','"+num+"','"+username+"','"+password+"')";
	st.executeUpdate(sql);
	response.sendRedirect("login.jsp");
}
catch(Exception e){
	out.println(e);
}
%>