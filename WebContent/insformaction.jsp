<%@ page import="java.sql.*" %>
<%
String name=request.getParameter("name");
String number=request.getParameter("number");
String adhar=request.getParameter("adhar");
String country=request.getParameter("country");
String state=request.getParameter("state");
String pincode=request.getParameter("pincode");
String salary=request.getParameter("salary");
String gender=request.getParameter("gender");
String checkbox=request.getParameter("checkbox");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance","root","smitha");
	Statement st=con.createStatement();
	String sql="insert into insursnceform  values('"+name+"','"+number+"','"+adhar+"','"+salary+"','"+gender+"','"+checkbox+"','"+country+"','"+state+"','"+pincode+"')";
	st.executeUpdate(sql);
	response.sendRedirect("userscreen.jsp");
	out.print("<script type=\"text/javscript\"" );
	out.print("alert('submitted sucessfully')" );
	out.print("</script>");
}
catch(Exception e){
	out.println(e);
}
%>