
document.getElementById("submit").addEventListener("click", function (event) {
    
    var user = document.getElementById("user");
    var userError = document.getElementById("usererr");

    var password = document.getElementById("pass");
    var passwordError = document.getElementById("passerr");

    var input=document.getElementById("input");
    var inputerr=document.getElementById("inputerr");

    var email=document.getElementById("number");
    var emailerr=document.getElementById("numberErr");

    var confirm=document.getElementById("cnfpass");
    var confirmErr=document.getElementById("cnfpasserr");

    if (user.value == "") {
        userError.innerHTML = "*name required";
        event.preventDefault();
    }
    if (password.value =="") {
        passwordError.innerHTML = "*password required";
        event.preventDefault();
    }
    if (input.value == "") {
        inputerr.innerHTML = "*name required";
        event.preventDefault();
    }
    if (email.value =="") {
        emailerr.innerHTML = "*mobile no required";
        event.preventDefault();
    }
    if (confirm.value =="") {
        confirmErr.innerHTML = "*confirm password";
        event.preventDefault();
    }
    if(confirm.value!=password.value){
        confirmErr.innerHTML = "*confirm password";
        event.preventDefault();
    }
   
   
});
function validinput(){
    var userError = document.getElementById("inputerr");
    userError.innerHTML=" ";
   }
function validEmail(){
    var emailError = document.getElementById("emailerr");
    emailError.innerHTML=" ";
   }
function validuser(){
    var userError = document.getElementById("usererr");
    userError.innerHTML=" ";
   }
function passwordValid(){
    var passwordError = document.getElementById("passerr");
    passwordError.innerHTML=" ";
   }
function confirmValid(){
    var  confirmError = document.getElementById("cnfpasserr");
    confirmError.innerHTML=" ";
   }
   function MobileValid() {
    var mobileNumber = document.getElementById("number");
    mobileNumber.value = mobileNumber.value.replace(/[^0-9\.]/g, '');
    document.getElementById("numberErr").innerHTML = " ";
}

