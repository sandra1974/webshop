<%-- 
    Document   : home
    Created on : 23-Dec-2017, 22:25:10
    Author     : sandr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Google Map Hello World Example</title>
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

    </head>
    <body class="w3-content" style="max-width:1200px">
<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/webshop1"
                           user="root"  password="sandra"/>
 
        <sql:query dataSource="${dbsource}" var="products">
            SELECT * from product;
        </sql:query>
    <center>
        <table>
                <c:forEach var="product" items="${products.rows}" varStatus="rowCounter">
                    
                    <c:if test="${rowCounter.count % 5 == 1}">
      <tr>
    </c:if>
          <td>      
               
          <a href="${initParam.productImagePath}${product.name}.jpg">
                            <img src="${initParam.productImagePath}${product.name}.jpg"
                                 alt="${product.name}"  style="width:245px; height:300px" >
                        </a><br/>Price: ${product.price} EUR<br/>
                        More Info <br/>
                        Buy
                       </td>
         <c:if test="${rowCounter.count % 5 == 0||rowCounter.count == fn:length(values)}">
         
      </tr>
    </c:if>
           </c:forEach>
          </table>
    </center>
    
    
    
    
    
    
  </body>  
</html>  