
document.getElementById("submit").addEventListener("click", function (event) {
    
    var input = document.getElementById("user");
    var inputError = document.getElementById("inputerr");
    var password = document.getElementById("pass");
    var passwordError = document.getElementById("passerr");
    if (input.value == "") {
        inputError.innerHTML = "*name required";
        event.preventDefault();
    }
    
    if (password.value =="") {
        passwordError.innerHTML = "*password required";
        event.preventDefault();
    }
   
});

function validinput(){
    var inputError = document.getElementById("inputerr");
       inputError.innerHTML=" ";
   }
   function passwordValid(){
    var passwordError = document.getElementById("passerr");
    passwordError.innerHTML=" ";
   }
