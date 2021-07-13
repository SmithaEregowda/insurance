<!DOCTYPE html>
<htm>

    <head>
        <title>User registration </title>
        <link rel="stylesheet" href="CSS/register.css">
    </head>
    <a href="index.jsp"><button id="btn">BACK</button></a>
    <body>
       
        <div id="id01" class="dispp" >

            <form action="signupaction.jsp" method="POST">
                    <img id="image" src="Images/images.png" alt="images"> <br>
                    <h1> <b>REGISTERATION FORM</b></h1>
                    <hr>
                    <br>
                    <br>
                     <b>name</b>:
                    <input type="text" name="name" id="input" placeholder="enter username" onkeyup="validinput()">
                </input><br>
                    <span id="inputerr" style="color: red;"></span>
                    <br>
                    <br>
                    <br>
                    <br>
                    
                 <b>Mobile Number:</b>
                     <input type="text" name="num" id="number" onkeyup="MobileValid()" maxlength="10" 
                     placeholder="enter mobile num"><br>
                    <span id="numberErr" style="color: red;"></span>
                    <br>
                    <br>
                    <br>
                    <br>
                   <b> username:</b>
                    <input type="text" name="username" id="user" placeholder="enter username" onkeyup="validuser()">
                </input><br>
                    <span id="usererr" style="color: red;"></span>
                    <br>
                    <br>
                    <br>
                    <br>
                    <b>password:</b>
<input type="password" name="password" id="pass" placeholder="enter password"  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  title="must contain atleat onelowecase and uppercase letter and atleast 8 or more chracters"
                     onkeyup="passwordValid()">
                </input><br>
                    <span id="passerr" style="color: red;"></span>
                    <br>
                    <br>
                    <br>
                    <br>
                    <b>Confirm password:</b>
                    <input type="password" name="Confirm" id="cnfpass" placeholder="confirm password" onkeyup="confirmValid()">
                </input><br>
                    <span id="cnfpasserr" style="color: red;"></span>
                    <br>
                    <br>
                    <br>
                    <br>
                   <button id="submit" type="submit">submit</button>
                    <br>
            </form>
        </div>
        <br>
        <span>Alerady have <a href="login.jsp">Login in?</a></span>
       <script src="JS/register.js"></script>
    </body>
</htm>