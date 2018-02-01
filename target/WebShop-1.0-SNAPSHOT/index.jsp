<%-- 
    Document   : index
    Created on : 26-Dec-2017, 14:50:10
    Author     : sandr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <meta charset="UTF-8">
       <title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    
    .container {
    position: relative;
    text-align: center;
    color: white;
}
    
    .top-right {
    position: absolute;
    top: 8px;
    right: 16px;
}

    .mySlides {display: none}    
.w3-sidebar a {font-family: "Roboto", sans-serif}
body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}
</style>
<body class="w3-content" style="max-width:1200px">

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-bar-block w3-white w3-collapse w3-top" style="z-index:3;width:250px" id="mySidebar">
  <div class="w3-container w3-display-container w3-padding-16">
    <i onclick="w3_close()" class="fa fa-remove w3-hide-large w3-button w3-display-topright"></i>
    <h3 class="w3-wide"><b>LOGO</b></h3>
  </div>
  <div class="w3-padding-64 w3-large w3-text-grey" style="font-weight:bold">
    <a href="#" class="w3-bar-item w3-button">Shirts</a>
    <a href="#" class="w3-bar-item w3-button">Trousers</a>
    
    <a href="dresses.jsp" class="w3-bar-item w3-button">Dresses</a>
      
    <a href="#" class="w3-bar-item w3-button">Jackets</a>
    
    <a onclick="myAccFunc()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn">
     Accessories <i class="fa fa-caret-down"></i>
    </a>
    <div id="demoAcc" class="w3-bar-block w3-hide w3-padding-large w3-medium">
      <a href="#" class="w3-bar-item w3-button">Bags</a>
      <a href="#" class="w3-bar-item w3-button">Shoes</a>
      <a href="#" class="w3-bar-item w3-button">Jewerly</a>
      <a href="#" class="w3-bar-item w3-button">Hats</a>
    </div>
    
    
    
    <a href="#" class="w3-bar-item w3-button">Blazers</a>
    <a href="#" class="w3-bar-item w3-button">Coats</a>
  </div>
  <a href="#footer" class="w3-bar-item w3-button w3-padding">Contact</a> 
  
</nav>

<!-- Top menu on small screens -->
<header class="w3-bar w3-top w3-hide-large w3-black w3-xlarge">
  <div class="w3-bar-item w3-padding-24 w3-wide">LOGO</div>
  <a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding-24 w3-right" onclick="w3_open()"><i class="fa fa-bars"></i></a>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:250px">

  <!-- Push down content on small screens -->
  <div class="w3-hide-large" style="margin-top:83px"></div>
  
  <!-- Top header -->
  <header class="w3-container w3-xlarge">
    <p class="w3-left">Dresses</p>
    <p class="w3-right">
        <i class="fa fa-shopping-cart w3-margin-right"></i>
      <i class="fa fa-search"></i>
    </p>
  </header>

  <!-- Image header -->
  <div class="w3-content w3-section" style="max-width:910px;max-height:600px">
      
      <div class="container">
        <img class="mySlides" src="images/dress1.jpg" style="width:910px; height:600px">
        <div class="top-right" style="color:black"><b>DRESSES</b></div>
      </div>
   
    <div class="container">
        <img class="mySlides" src="images/trousers2.jpg" style="width:910px; height:600px">
   <div class="top-right"><b>TROUSERS</b></div>
      </div>  
      
    <div class="container">
        <img class="mySlides" src="images/blazer4.jpg" style="width:910px; height:600px">
   <div class="top-right"><b>BLAZERS</b></div>
      </div>  
      
      <div class="container">
        <img class="mySlides" src="images/coats1.jpg" style="width:910px; height:600px">
   <div class="top-right"><b>COATS</b></div>
      </div> 
      
      <div class="container">
        <img class="mySlides" src="images/shirt1.jpg" style="width:910px; height:600px">
   <div class="top-right"><b>SHIRTS</b></div>
      </div> 

      <div class="container">
        <img class="mySlides" src="images/bag1.jpg" style="width:910px; height:600px">
   <div class="top-right"><b>BAGS</b></div>
      </div> 
      
    <div class="container">
        <img class="mySlides" src="images/jewerly.jpg" style="width:910px; height:600px">
   <div class="top-right"><b>JEWERLY</b></div>
      </div>   

<script>
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
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>
  </div>
  
  <div class="w3-container w3-text-grey" id="jeans">
    <p>The most popular items</p>
  </div>

  <!-- Product grid -->
  <div class="w3-row w3-grayscale">
    <div class="w3-col l3 s6">
      <div class="w3-container">
       <div class="w3-display-container">
          <img src="images/blazer1.jpg" style="width:200px; height:250px">
         
          <div class="w3-display-middle w3-display-hover">
            <button class="w3-button w3-black">Buy now <i class="fa fa-shopping-cart"></i></button>
          </div>
        </div>
          
        <p>Blazer<br><b>$24.99</b></p>
      </div>
      <div class="w3-container">
        <div class="w3-display-container">
          <img src="images/dress2.jpg" style="width:200px; height:250px">
         
          <div class="w3-display-middle w3-display-hover">
            <button class="w3-button w3-black">Buy now <i class="fa fa-shopping-cart"></i></button>
          </div>
        </div>
        <p>Dress<br><b>$19.99</b></p>
      </div>
    </div>

    <div class="w3-col l3 s6">
      <div class="w3-container">
        <div class="w3-display-container">
          <img src="images/trousers1.jpg" style="width:200px; height:250px">
          <span class="w3-tag w3-display-topleft">New</span>
          <div class="w3-display-middle w3-display-hover">
            <button class="w3-button w3-black">Buy now <i class="fa fa-shopping-cart"></i></button>
          </div>
        </div>
        <p>Trousers<br><b>$19.99</b></p>
      </div>
      <div class="w3-container">
       <div class="w3-display-container">
          <img src="images/jewerly1.jpg" style="width:200px; height:250px">
         
          <div class="w3-display-middle w3-display-hover">
            <button class="w3-button w3-black">Buy now <i class="fa fa-shopping-cart"></i></button>
          </div>
        </div>
        <p>Jewerly<br><b>$20.50</b></p>
      </div>
    </div>

    <div class="w3-col l3 s6">
      <div class="w3-container">
        <div class="w3-display-container">
          <img src="images/bag2.jpg" style="width:200px; height:250px">
         
          <div class="w3-display-middle w3-display-hover">
            <button class="w3-button w3-black">Buy now <i class="fa fa-shopping-cart"></i></button>
          </div>
        </div>
        <p>Bag<br><b>$20.50</b></p>
      </div>
      <div class="w3-container">
        <div class="w3-display-container">
          <img src="images/coat2.jpg" style="width:200px; height:250px">
          <span class="w3-tag w3-display-topleft">New</span>
          <div class="w3-display-middle w3-display-hover">
            <button class="w3-button w3-black">Buy now <i class="fa fa-shopping-cart"></i></button>
          </div>
        </div>
          <p>Coat<br><b class="w3-text-red">$14.99</b></p>
      </div>
    </div>

    <div class="w3-col l3 s6">
      <div class="w3-container">
       <div class="w3-display-container">
          <img src="images/sport jacket.jpg" style="width:200px; height:250px">
         
          <div class="w3-display-middle w3-display-hover">
            <button class="w3-button w3-black">Buy now <i class="fa fa-shopping-cart"></i></button>
          </div>
        </div>
        <p>Jacket<br><b>$14.99</b></p>
      </div>
      <div class="w3-container">
        <div class="w3-display-container">
          <img src="images/shoes1.jpg" style="width:200px; height:250px">
         
          <div class="w3-display-middle w3-display-hover">
            <button class="w3-button w3-black">Buy now <i class="fa fa-shopping-cart"></i></button>
          </div>
        </div>
        <p>Shoes<br><b>$24.99</b></p>
      </div>
    </div>
  </div>

  <!-- Subscribe section -->
 
  <div class="w3-content w3-section" style="max-width:910px">
  
   <div id="googleMap" style="height:400px;" class="w3-grayscale-max"></div>
<script>
function myMap() {
  myCenter=new google.maps.LatLng(45.3969917, 14.392611999999986);
  var mapOptions= {
    center:myCenter,
    zoom:12, scrollwheel: false, draggable: false,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapOptions);

  var marker = new google.maps.Marker({
    position: myCenter
  });
  marker.setMap(map);
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAArHeldH5KMpgC_mtpufW1zx5i2J8sfrM&callback=myMap"></script>
 
  
  <!-- Footer -->
  <footer class="w3-padding-64 w3-light-grey w3-small w3-center" id="footer">
    <div class="w3-row-padding">
      <div class="w3-col s4">
        <h4>Contact Form</h4>
        <p>Questions? Go ahead.</p>
        <form action="/action_page.php" target="_blank">
          <p><input class="w3-input w3-border" type="text" placeholder="Name" name="Name" required></p>
          <p><input class="w3-input w3-border" type="text" placeholder="Email" name="Email" required></p>
          <p><input class="w3-input w3-border" type="text" placeholder="Subject" name="Subject" required></p>
          <p><input class="w3-input w3-border" type="text" placeholder="Message" name="Message" required></p>
          <button type="submit" class="w3-button w3-block w3-black">Send</button>
        </form>
      </div>

      <div class="w3-col s4">
        <h4>More</h4>
        <p><a href="layout.jsp">Home</a></p>
        <p><a href="#">About</a></p>
        <p><a href="#">Services</a></p>
        <p><a href="#">Gallery</a></p>
        <p><a href="#">Shipment</a></p>
        <p><a href="#">Payment</a></p>
        <p><a href="#">Gift card</a></p>
        <p><a href="#">Webshop</a></p>
        <p><a href="#">FAQ</a></p>
      </div>

      <div class="w3-col s4 w3-justify">
        <h4>Contact Details</h4>
        <p><i class="fa fa-fw fa-map-marker"></i> Company Name</p>
        <p><i class="fa fa-fw fa-phone"></i> 0044123123</p>
        <p><i class="fa fa-fw fa-envelope"></i> ex@mail.com</p>
        <h4>We accept</h4>
        <p><i class="fa fa-fw fa-cc-amex"></i> Amex</p>
        <p><i class="fa fa-fw fa-credit-card"></i> Credit Card</p>
        <br>
        <i class="fa fa-facebook-official w3-hover-opacity w3-large"></i>
        <i class="fa fa-instagram w3-hover-opacity w3-large"></i>
        <i class="fa fa-snapchat w3-hover-opacity w3-large"></i>
        <i class="fa fa-pinterest-p w3-hover-opacity w3-large"></i>
        <i class="fa fa-twitter w3-hover-opacity w3-large"></i>
        <i class="fa fa-linkedin w3-hover-opacity w3-large"></i>
      </div>
    </div>
      
   
  </footer>

  <div class="w3-black w3-center w3-padding-24">Powered by javacoder4u</div>

  <!-- End page content -->
</div>

<!-- Newsletter Modal -->


<script>
// Accordion 
function myAccFunc() {
    var x = document.getElementById("demoAcc");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}

// Click on the "Jeans" link on page load to open the accordion for demo purposes



// Script to open and close sidebar
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}
</script>
</div>
</body>
</html>


