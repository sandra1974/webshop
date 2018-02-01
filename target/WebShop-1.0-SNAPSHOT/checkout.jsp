<%-- 
    Document   : checkout
    Created on : 14-Jan-2018, 22:55:44
    Author     : sandr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">   
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">    
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-purple.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-.css">
<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}
table {
    border-collapse:collapse;
    width:50%;
   
}
th,td{
    text-align:left;
    padding:8px;
}
tr:nth-child(even) {
    background-color:lavender;
}
th{
    background-color:lightsteelblue;
}
</style>
        
    </head>
    <body>
        <%
        double param = (double) session.getAttribute("overallTotal");
        int param1 = (int) session.getAttribute("id");
        int param2 = (int) session.getAttribute("quantity");
       
       double charge = 5.50;
       double Total1 = param + charge;
       
    %>   
      
     <!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="home.jsp" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    
    <a href="paypalJS.jsp" class="w3-bar-item w3-button w3-padding-large" >PAYMENT</a>
   <a href="home.jsp" class="w3-bar-item w3-button w3-padding-large">CANCEL</a>
     <a href="cart.jsp"><i class="fa fa-shopping-cart w3-padding-large w3-hover-grey w3-hide-small w3-right" style="font-size:20px"></i></a>
    <a href="javascript:void(0)" class="w3-padding-large w3-hover-grey w3-hide-small w3-right"><input type="text" placeholder="Search...">&nbsp;<i class="fa fa-search"></i></a>
  </div>
</div>   
    
      <div class="w3-row  w3-padding-64  w3-theme-l5" id="akcija">
        
        <center>
    
           
    <h2>Checkout Page</h2>
     <table align="center">
            <tr>
                <th>Quantity</th>
                <th>Description</th>
                <th>Price</th>
                <th>Amount</th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${cart.items}">
                <tr>
                    <td><form action="" method="post">
                            <input type="hidden" name="id" value="<c:out value='${item.product.id}'/>" />
                            <input type="text" name="quantity" value="<c:out value='${item.quantity}'/>" />
                           
                        </form></td>
                    <td><c:out value='${item.product.description}'/></td>
                    <td>${item.product.price} EUR</td>
                    <td>${item.total} EUR</td>
                    <td><form action="" method="post">
                            <input type="hidden" name="id" 
                                   value="<c:out value='${item.product.id}'/>">
                            <input type="hidden" name="quantity" value="0">
                           
                        </form></td>
                </tr>
            </c:forEach>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td><c:out value='${overallTotal}'/>EUR</td>
                <td></td>
            </tr>
            <tr>
                <td>subtotal costs: <%=param%> EUR</td>
            <tr>
                <tr>
                <td>charge: 5.50 EUR</td>
            <tr>
                <tr>
                <td>total: <%=Total1%> EUR</td>
            <tr>
        </table>
        </center>
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

    </body>
</html>
