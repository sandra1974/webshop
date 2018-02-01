<%-- 
    Document   : faq
    Created on : 27-Jan-2018, 22:38:34
    Author     : sandr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}

</style>
        
    </head>
    <body>
         <!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="home.jsp" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    <a href="home.jsp#band2" class="w3-bar-item w3-button w3-padding-large w3-hide-small">ABOUT</a>
    <a href="home.jsp#band1" class="w3-bar-item w3-button w3-padding-large w3-hide-small">SERVICES</a>
    <a href="home.jsp#shop" class="w3-bar-item w3-button w3-padding-large w3-hide-small">SHOP</a>
    
    <div class="w3-black  w3-dropdown-hover w3-hide-small">
      <button class="w3-padding-large w3-button" title="items">ITEMS <i class="fa fa-caret-down"></i></button>     
      <div class=" w3-black w3-dropdown-content w3-bar-block w3-card-4">
        <a href="dress.jsp#shopdress" class="w3-bar-item w3-button">Dresses</a>
        <a href="shirt.jsp#shopshirt" class="w3-bar-item w3-button">Shirts</a>
        <a href="trousers.jsp#shoptrousers" class="w3-bar-item w3-button">Trousers</a>
        <a href="jackets.jsp#shopjackets" class="w3-bar-item w3-button">Jackets</a>
        <a href="coat.jsp#shopcoats" class="w3-bar-item w3-button">Coats</a>
     
      
       <a onclick="myAccFunc()" href="javascript:void(0)" class=" w3-black w3-button w3-block  w3-left-align" id="myBtn">
     Accessories <i class="fa fa-caret-down"></i>
    </a>
    <div id="demoAcc" class="w3-black  w3-bar-block w3-hide w3-padding-large w3-medium">
      <a href="bag.jsp#shopbag" class="w3-bar-item w3-button">Bags</a>
      <a href="shoes.jsp#shopshoes" class="w3-bar-item w3-button">Shoes</a>
      <a href="jewerly.jsp#shopjewerly" class="w3-bar-item w3-button">Jewerly</a>
      <a href="hat.jsp#shophat" class="w3-bar-item w3-button">Hats</a>
    </div>
        
        </div>
    </div>
    <a href="gallery.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">GALLERY</a>
    <a href="home.jsp#contact" class="w3-bar-item w3-button w3-padding-large w3-hide-small">CONTACT</a>
    <div class="w3-black  w3-dropdown-hover w3-hide-small">
      <button class="w3-padding-large w3-button" title="More">MORE <i class="fa fa-caret-down"></i></button>     
      <div class="w3-black  w3-dropdown-content w3-bar-block w3-card-4">
        
        <a href="home.jsp#payment" class="w3-bar-item w3-button">Payment</a>
        <a href="faq.jsp" class="w3-bar-item w3-button">FAQ</a>
      </div>
    </div>
     <a href="cart.jsp"><i class="fa fa-shopping-cart w3-padding-large w3-hover-grey w3-hide-small w3-right" style="font-size:20px"></i></a>
    <a href="javascript:void(0)" class="w3-padding-large w3-hover-grey w3-hide-small w3-right"><input type="text" placeholder="Search...">&nbsp;<i class="fa fa-search"></i></a>
  </div>
</div>

<!-- Navbar on small screens -->
<div id="navDemo" class="w3-bar-block w3-grayscale w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:46px">
  <a href="#band" class="w3-bar-item w3-button w3-padding-large">BAND</a>
  <a href="#tour" class="w3-bar-item w3-button w3-padding-large">TOUR</a>
  <a href="#contact" class="w3-bar-item w3-button w3-padding-large">CONTACT</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">MERCH</a>
</div>

<!-- Page content -->


    <div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="payment">
        
         <h2 class="w3-wide">FREQUENTLY ASKED QUESTIONS</h2>
    <p class="w3-justify">
       Frequently asked questions can be written here....
    </p>
    
    
</div>




<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity w3-light-grey w3-xlarge">
    
    <p class="w3-medium"><a href="#" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a></p>
    
  <i class="fa fa-facebook-official w3-hover-opacity"></i>
  <i class="fa fa-instagram w3-hover-opacity"></i>
  <i class="fa fa-snapchat w3-hover-opacity"></i>
  <i class="fa fa-pinterest-p w3-hover-opacity"></i>
  <i class="fa fa-twitter w3-hover-opacity"></i>
  <i class="fa fa-linkedin w3-hover-opacity"></i>
  <p class="w3-medium">Powered by javacoder4u</p>
</footer>

<script>
// Automatic Slideshow - change image every 4 seconds
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 4000);    
}

// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}

// When the user clicks anywhere outside of the modal, close it
var modal = document.getElementById('ticketModal');
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}


  
function myAccFunc() {
    var x = document.getElementById("demoAcc");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}
    
   
</script>


    </body>
</html>
