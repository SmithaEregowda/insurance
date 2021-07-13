<!DOCTYPE html>
<html>
<head>

    <link rel="stylesheet" href="CSS/login.css">
    <title>login form</title>
   
</head>
<a href="index.jsp"><button id="btn">BACK</button></a>
<body>
    
    <div id="id01" class="dispp" >

        <form method="post" action="userloginaction.jsp">
                <img id="image" src="Images/images.png" alt="images"> <br>
                <h1> <b>LOGGIN FORM</b></h1>
                <hr>
                <br>
                <br>
                <b>username:</b>
                <input type="text" name="username" id="user" placeholder="enter username" onkeyup="validinput()" /><br>
                <span id="inputerr" style="color: red;"></span>
                <br>
                <br>
                <br>
                <br>
                <b>password:</b>
                <input type="password" name="password" id="pass" placeholder="enter password" 
                onkeyup="passwordValid()"   pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  title="must contain atleat one
                lowecase and uppercase letter and atleast 8 or more chracters"><br>
                <span id="passerr" style="color: red;"></span>
                <br>
                <br>
                <button id="submit" type="submit">submit</button>
                <br>
                   
               
           
        </form>
    </div>
    <span>
   <b> Don't have account</b>&nbsp;&nbsp;<a href="signup.html">,sign up?</a>
    </span>
    
</body>
<script src="JS/login.js">
</script>

</html>