<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>apply insurance</title>
 <link rel="stylesheet" href="CSS/insform.css">
    
</head>

<body>
<% 
try{
	
	HttpSession se=request.getSession();
    String username =(String)session.getAttribute("user");
    String password =(String)session.getAttribute("pass");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vetenarymanagmentsystem","root","smitha");
	 Statement s=con.createStatement();
	ResultSet rs=s.executeQuery("select * from userRegistration where username='"+username+"' and  password='"+password+"' ");
	while(rs.next()){
		%>

   <span style="color:red; font-size:50px;"> <b>WELCOME <%=rs.getString("username") %></b></span>
    <br>
    <br>
    <button onclick="document.getElementById('id01')
        .style.display='block'">
        APPLY FOR INSURANCE</button>

    <div id="id01" class="dispp" style="display: none;">

        <form action="insformaction.jsp" method="post">
            <fieldset>
                <span onclick="document.getElementById('id01')
            .style.display='none'">&times;</span>
               
                <h1> <b>INSURANCE FORM</b></h1>
                <hr>
                <table>
                

                <tr>
                    <td>name:</td>
                    <td><input type="text" id="name" name="name" onkeyup="nameValid()" class="boxes" placeholder="Enter the name"><br>
                        <span style="color: red;" id="nameErr"></span>
                    </td>
                </tr>
                <tr>
                    <td>AdharCard Number</td>
                    <td><input type="text" id="adhar" name="adhar" onkeyup="AdharValid()" 
                    maxlength="10" class="boxes" placeholder="Enter adhar no"><br>
                        <span style="color: red;" id="adharErr"></span>
                    </td>
                </tr>
                <tr>
                    <td>Mobile no:</td>
                    <td><input type="text" id="number" name="number" onkeyup="MobileValid()" 
                    maxlength="10" class="boxes" placeholder="mobile no"><br>
                        <span style="color: red;" id="numberErr"></span>
                    </td>
                </tr>
                <tr>
                    <td>Salary:</td>
                    <td><input type="text" id="salary" name="salary" onkeyup="salaryValid()" class="boxes"
                     placeholder="Enter your salary"><br>
                        <span style="color: red;" id="salaryErr"></span>
                    </td>
                </tr>

                <tr>
                    <td>Gender:</td>
                    <td>
                        <input type="radio" name="gender" value="male" id="male" onchange="genderValid()" id="male">male
                        <input type="radio" name="gender" value="female" id="female" onchange="genderValid()" id="female">female<br>
                        <span style="color: red;" id="genderErr"></span>
                    </td>
                </tr>
                <tr>
                    <td>Plans:</td>
                    <td><input type="checkbox" name="checkbox" value="Lifeinsurance" onchange="checkboxValid()" id="c1">Life insurance
                        <input type="checkbox" name="checkbox" value="Healthinsurance" onchange="checkboxValid()" id="c2">Health insurance
                        <input type="checkbox" name="checkbox" value="motorinsurance" onchange="checkboxValid()" id="c3">motor insurance
                        <input type="checkbox" name="checkbox" value="travelinsurance" onchange="checkboxValid()" id="c4">travel insurance<br>
                        <span style="color: red;" id="checkboxErr"></span>
                    </td>
                </tr>
                <tr>
                    <td>country:</td>
                    <td><input type="text" id="country" onkeyup="countryValid()" name="country" class="boxes" placeholder="country"><br>
                        <span style="color: red;" id="countryErr"></span>
                    </td>
                </tr>
                 <tr>
                    <td>state:</td>
                    <td><input type="text" id="state" onkeyup="stateValid()" name="state" class="boxes" placeholder="state"><br>
                        <span style="color: red;" id="stateErr"></span>
                    </td>
                </tr>
                 <tr>
                    <td>pincode:</td>
                    <td><input type="text" id="pincode" onkeyup="pincodeValid()" name="pincode" class="boxes" placeholder="pincode"><br>
                        <span style="color: red;" id="pincodeErr"></span>
                    </td>
                </tr>
                

                <tr>
                    <td colspan="2"><input type="submit" value="Apply" id="submit"></td>
                </tr>
               
            </table>

                <div id="conatiner">
                    <button onclick="document.getElementById('id01')
    .style.display='none'" style="background-color: red;" type="button">
                        cancel</button>

                    
                </div>
            </fieldset>
        </form>
           <%
}
con.close();
s.close();
rs.close();
}catch(Exception e){
	System.out.println(e);
}
%>
    </div>
    <p id="demo"></p>
</body>
<script >

document.getElementById("submit").addEventListener("click", function (event) {
    var name = document.getElementById("name");
    var country = document.getElementById("country");
    var state = document.getElementById("state");
    var pincode = document.getElementById("pincode");
    if (name.value == "") {
        document.getElementById("nameErr").innerHTML = "*required";
        event.preventDefault();
    }
    var number = document.getElementById("number");
    if (number.value == "") {
        document.getElementById("numberErr").innerHTML = "*required";
        event.preventDefault();
    }
    var adhar = document.getElementById("adhar");
    if (adhar.value == "") {
        document.getElementById("adharErr").innerHTML = "*required";
        event.preventDefault();
    }
    var salary = document.getElementById("salary");
    if (salary.value == "") {
        document.getElementById("salaryErr").innerHTML = "*required";
        event.preventDefault();
    }
    if(country.value==""){
        document.getElementById("countryErr").innerHTML = "*required";
        event.preventDefault();
    }
    if(pincode.value==""){
        document.getElementById("pincodeErr").innerHTML = "*required";
        event.preventDefault();
    }
    var state=document.getElementById("state");
    if(state.value==""){
        document.getElementById("stateErr").innerHTML="*required";
    }
    
    var found=false;
    var male=document.getElementById("male");
    var female=document.getElementById("female");
    if(male.checked){
        found=true;
    }
    else if(female.checked){
        found=true;
    }
   if(found==false){
	   document.getElementById("genderErr").innerHTML = "*required";
	     event.preventDefault();
   }
    
    var valid=false;
    
    if(document.getElementById("c1").checked){
    valid=true;
    }
  else  if(document.getElementById("c2").checked){
     valid=true;
    }
   else if(document.getElementById("c3").checked){
     valid=true;
    }
   else if(document.getElementById("c4").checked){
	     valid=true;
	    }
    if(valid==false){
    	document.getElementById("checkboxErr").innerHTML = "*required";
        event.preventDefault();
    }
   
});
function nameValid() {
    document.getElementById("nameErr").innerHTML = "  ";
}
function salaryValid(){
    document.getElementById("salaryErr").innerHTML = "  "; 
}
function countryValid(){
    document.getElementById("countryErr").innerHTML = "  ";
}
function stateValid(){
    document.getElementById("stateErr").innerHTML = "  ";  
}
function pincodeValid(){
    document.getElementById("pincodeErr").innerHTML=" ";
    
}
function MobileValid() {
    var mobileNumber = document.getElementById("number");
    mobileNumber.value = mobileNumber.value.replace(/[^0-9\.]/g, '');
    document.getElementById("numberErr").innerHTML = " ";
}

function genderValid(){
     document.getElementById("genderErr").innerHTML=" ";
}
function AdharValid(){
    document.getElementById("adharErr").innerHTML=" ";
}
function checkboxValid(){
    document.getElementById("checkboxErr").innerHTML=" "; 
}
</script>


</html>