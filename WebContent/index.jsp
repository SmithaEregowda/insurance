<!DOCTYPE html>
<html>
<title>insurance</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="CSS/index.css">
<body>


<div class="bigimage">
    <div class="nav-item">
  
    <a href="#home" class="insurance">CAN BANK INSURANCE COMPANY</a>
    <!-- Right-sided navbar links -->
    <div class="nav-link">
      <a href="#about" class="links">ABOUT</a>
      <a href="#product-list" class="links"><i class="fa fa-address-card"></i>PRODUCTS</a>
     
      <a href="signup.jsp" class="links"><i class="fa fa-user"></i> LOGIN/REGISTER</a>
      <a href="#contcontainer" class="links"><i class="fa fa-envelope"></i> REACH US?</a>
    </div>
    <!-- Hide right-floated links on small screens and replace them with a menu icon -->

    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
      <i class="fa fa-bars"></i>
    </a>
  </div>



<!-- Home section -->

  <div class="home">
    <span class="slogon" style="color: red;">Good hands that Care you.</span>
    <p><button id="learn" action="#about">LEARN MORE.....</button></p>
  </div> 
</div>


<!-- About Section -->
<div class="about" style="padding:28px 16px" id="about">
 <div >
    <h3 class="center" style="margin-left: 400px;">ABOUT THE CAN BANK</h3>
  <p class="about-content">Term Life insurance provides coverage for a fixed period of time at a fixed premium rate.</p>
  <p class="about-content">In case of untimely death of the life insured during the policy term , the nominee of the life insured gets the Total Payout/Benefit. The benefit can be paid out as a 
    lump sum payout or a combination of Lump sum & Monthly payout or only as a Monthly payout.</p>
  <p class="about-content">Therefore Term insurance plans are said to be pure protection plans which ensure financial stability
     of the dependants in case of untimely death of the life insured.</p>
  <p class="about-content">Monthly income to sustain the family lifestyle.</p>
  <p class="about-content">Accidental Death Benefit rider offers an additional sum assured over the base
     plan offering in case death occurs due to an accident.</p>
     <p class="about-content">Accidental Disability rider offers an immediate lump sum payment on occurrence of any disability due to an accident.</p>
     <p class="about-content">Option to increase Death benefit: Certain plans have offerings where the life insured can increase the life
        cover at key stages in life like marriage , birth of child.</p>
 </div>
</div>



<!-- product Section -->
<div id="product-list"  style="padding:50px 16px">
  <h1 style="color: red;margin-left: 400px;">PLANS AVAILABLE ON OUR COMPANY</h1>
  <div class="product">
    
    <b>LIFE INSURANCE</b><hr /><br />
    <p class="product-content">Life Insurance refers to a policy or cover whereby the policyholder can ensure financial freedom for his/her 
      family members after death. Suppose you are the sole earning member in your family, supporting your spouse and children.
      In such an event, your death would financially devastate the whole family. </p>
  </div>
   <div class="product">
    <b>HEALTH INSURANCE</b><hr /><br />
    <p class="product-content">Health insurance refers to a type of general insurance, which provides financial assistance to policyholders
       when they are admitted to hospitals for treatment. Additionally, some plans also cover the cost 
      of treatment undertaken at home, prior to a hospitalisation or after discharge from the same.</p>
  </div>
   <div class="product">
    <b>MOTOR INSURANCE</b><hr /><br />
    <p class="product-content">Motor insurance refers to policies that offer financial assistance in the event of accidents involving your car or bike. 
      Motor insurance can be availed for three categories of motorised vehicles, including:
      car,Bike etc..
    </p>
  </div>
   <div class="product">
    <b>TRAVEL INSURANCE</b><hr /><br />
    <p class="product-content">When talking about the different types of insurance policies, one must not forget to learn more about travel insurance plans.
       Such policies ensure the financial safety of a traveller during a trip. 
      Therefore, when compared to other insurance policies, travel insurance is a short-term cover.</p>
  </div>
</div>


<!-- Contact Section -->
 <div id="contcontainer"  style="padding:50px 16px">
          <h1  style="color: red;margin-left: 400px;">REACH US FOR QUERIES</h1>
       <div class="continsidecontainer">
         
          <div class="contact">
           
            <form class="classForm" >
    
   <p class="gpinput"> <label>Name:&nbsp;</label>
    <input type="name" name="name" placeholder="Enter your name" id="name" width="50px" onkeyup="namechange()" /><br />
    <span id="nameerr" style="color: red;" ></span>
  </p>
    
 
 <p class="gpinput">
    <label>Email:&nbsp;</label>
    <input type="name" name="name" placeholder="Enter your email" id="email" width="50px" onkeyup="emailchange()"  /><br />
    <span id="emailerr" style="color: red;"  ></span>
 </p>
  <p class="gpinput">
     
    <textarea rows="4" cols="40"   placeholder="Drop your message" id="message" onkeyup="messagechange()" ></textarea><br />
    <span id="messageerr" style="color: red;"  ></span>
  </p>
 
  <input type="submit" id="contbtn" onclick="validation()" >
</form>

</div>
<div class="information">
 <table class="tableinfo">
  <tbody>
  <tr class="trelement">
     <td >Contact us:</td>
     <td>788543070</td>
   </tr>
   <tr class="trelement">
     <td>Email id:</td>
     <td>smithagmail@gmail.com</td>
   </tr>
   <tr class="trelement">
     <td>Address:</td>
     <td>Banglore,Karnataka</td>
   </tr>
  </tbody>
 </table>
</div>
       </div>
       <br /> <br /> <br /> <br />
       </div>

<!-- Footer -->

 
<script>
  var button=document.getElementById("contbtn");
function validation(){
  
    var name=document.getElementById("name");
    var email=document.getElementById("email");
    var message=document.getElementById("message");

     var nameerr=document.getElementById("nameerr");
    var emailerr=document.getElementById("emailerr");
    var messageerr=document.getElementById("messageerr");

   
    if(name.value=="")
    {
    nameerr.innerHTML="*required";
    
    }
    if(email.value=="")
    {
        emailerr.innerHTML="*required";
    }
   if(message.value=="")
    {
        messageerr.innerHTML="*required";
    }

    
}
function namechange(){
  var nameerr=document.getElementById("nameerr"); 
   nameerr.innerHTML="  ";
}
function emailchange(){
   var emailerr=document.getElementById("emailerr");
   emailerr.innerHTML="  ";
}
function messagechange(){
 var messageerr=document.getElementById("messageerr");
   messageerr.innerHTML="  ";
}

</script>

</body>
</html>