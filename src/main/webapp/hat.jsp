<%-- 
    Document   : hat
    Created on : 24-Jan-2018, 21:56:22
    Author     : sandr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}

</style>
        
    </head>
    <body>
    <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://eu-cdbr-west-02.cleardb.net:3306"
                           user="b4f786cb5e6fb3"  password="39b750af"/>
    
        <sql:query dataSource="${dbsource}" var="products">
            SELECT * from heroku_2e32f1f5d7f29ce.product where name="modern hat";
        </sql:query>
    
    
    
    
    
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
      <div class="w3-black  w3-dropdown-content w3-bar-block w3-card-4">
        <a href="dress.jsp#shopdress" class="w3-bar-item w3-button">Dresses</a>
        <a href="shirt.jsp#shopshirt" class="w3-bar-item w3-button">Shirts</a>
        <a href="trousers.jsp#shoptrousers" class="w3-bar-item w3-button">Trousers</a>
        <a href="jackets.jsp#shopjackets" class="w3-bar-item w3-button">Jackets</a>
        <a href="coat.jsp#shopcoats" class="w3-bar-item w3-button">Coats</a>
     
      
       <a onclick="myAccFunc()" href="javascript:void(0)" class="w3-button w3-block w3-black w3-left-align" id="myBtn">
     Accessories <i class="fa fa-caret-down"></i>
    </a>
    <div id="demoAcc" class="w3-black  w3-bar-block w3-hide w3-padding-large w3-medium">
      <a href="bag.jsp#shopbag" class="w3-bar-item w3-button">Bags</a>
      <a href="shoes.jsp#shopshoes" class="w3-bar-item w3-button">Shoes</a>
      <a href="jewerly.jsp#shopjewerly" class="w3-bar-item w3-button">Jewerly</a>
      <a href="#shophat" class="w3-bar-item w3-button">Hats</a>
    </div>
        
        </div>
    </div>
    <a href="gallery.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">GALLERY</a>
    <a href="home.jsp#contact" class="w3-bar-item w3-button w3-padding-large w3-hide-small">CONTACT</a>
    <div class=" w3-black w3-dropdown-hover w3-hide-small">
      <button class="w3-padding-large w3-button" title="More">MORE <i class="fa fa-caret-down"></i></button>     
      <div class=" w3-black w3-dropdown-content w3-bar-block w3-card-4">
       
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
<div class="w3-content" style="max-width:2000px;margin-top:46px">

  <!-- Automatic Slideshow Images -->
 
  
  
  
  
  <!-- The Band Section -->
 

  <!-- The Shop Section -->
  <div class="w3-theme-l2" id="shophat">
    <div class="w3-container w3-content w3-padding-64" style="max-width:800px">
      <h2 class="w3-wide w3-center">BROWSE SHOP</h2>
      <p class="w3-opacity w3-center"><i>In our webshop you will find various modern designs of hats</p><br>

      

      <div class="w3-col w3-gray  w3-row-padding w3-padding-32" style="margin:0 -16px">
          
          
        
          
          <table>
          <div class="w3-third w3-margin-bottom">
              
            <c:forEach var="product" items="${products.rows}" varStatus="rowCounter">
                    
                    <c:if test="${rowCounter.count % 3 == 1}">
      <tr>
    </c:if>
          <td>      
               
          <a href="${initParam.productImagePath}${product.name}.jpg">
                            <img src="${initParam.productImagePath}${product.name}.jpg"
                                 alt="${product.name}"   style="width:70%" >
                        </a><br/>
                        <div class="w3-container w3-light-grey" style="width:70%">
                            <div class="w3-right">Price: ${product.price} EUR<br/></div>
                      
                        <form action="cart" method="POST">
                            <input type="hidden" name="id" 
                                   value="${product.id}">
                            <input type="submit" style="width:100%;"  class="w3-button w3-blue-grey w3-margin-bottom" value="Add To Cart">
                        </form>
                          <input type="submit"  style="width:100%; font-weight: normal"  onclick="document.getElementById('info').style.display='block'"  class="w3-button w3-blue-grey w3-margin-bottom" value="More Info">
                       </td>
         <c:if test="${rowCounter.count % 3 == 0||rowCounter.count == fn:length(values)}">
             
         
      </tr>
    </c:if>
           </c:forEach>
          
          
          </div>
        </div>
          
          
          </table>
      </div>
      
    </div>
  </div>

  <!-- Ticket Modal -->
 
  

  <!-- The Contact Section -->
  
  
<!-- End Page Content -->
</div>
<!-- Add Google Maps -->

<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->
<!-- Ticket Modal -->
  <div id="info" class="w3-modal">
    <div class="w3-modal-content w3-animate-top w3-card-4">
      <header class="w3-container w3-teal w3-center w3-padding-32"> 
        <span onclick="document.getElementById('info').style.display='none'" 
       class="w3-button w3-teal w3-xlarge w3-display-topright">×</span>
        <h2 class="w3-wide"><i class="w3-margin-right"></i>Description</h2>
      </header>
      <div class="w3-container w3-padding-32 ">
           <center>Name of product</center>
          <center>Write here description of product</center>
           <p class="w3-right"><a href="#" class="w3-text-blue" onclick="document.getElementById('ticketModal1').style.display='block'">Photos</a></p>
          
      </div>
    </div>
  </div>
  


   <div id="ticketModal1" class="w3-modal">
    <div class="w3-modal-content w3-animate-top w3-card-4">
      <header class="w3-container w3-teal w3-center w3-padding-32"> 
        <span onclick="document.getElementById('ticketModal1').style.display='none'" 
       class="w3-button w3-teal w3-xlarge w3-display-topright">×</span>
        <h2 class="w3-wide"><i class="w3-margin-right"></i>Photos</h2>
      </header>
        <div class="w3-container w3-padding-32 "><center>
           <a href="images/p8.jpg" target="_blank">  <img src="images/p8.jpg" alt="clothes" style="width:245px; height:300px" ></a>
           <a href="images/p7.jpg" target="_blank">  <img src="images/p7.jpg" alt="clothes" style="width:245px; height:300px" ></a>
          <a href="images/p5.jpg" target="_blank">  <img src="images/p5.jpg" alt="clothes" style="width:245px; height:300px" ></a>
          </center>
            <div class="w3-container w3-padding-32 "></div>
            
      </div>
    </div>
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

