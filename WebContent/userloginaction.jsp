<%@ page import="java.sql.*"%>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/insurance","root","smitha");
	
	PreparedStatement statement=con.prepareStatement("select username,password from usersignup where username=? and password=?");
	statement.setString(1, username);
	statement.setString(2, password);
	ResultSet rs=statement.executeQuery();
	HttpSession se=request.getSession();
	while(rs.next()){
		 se.setAttribute("user", username);
		 se.setAttribute("pass", password);
		response.sendRedirect("userscreen.jsp");
		
	}
	out.print("<script type=\"text/javscript\"" );
	out.print("alert('incorrect username or password')" );
	out.print("</script>");
	response.sendRedirect("login.jsp");
	
}
catch(Exception e){
	out.println(e);
}
%>