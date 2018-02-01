<%-- 
    Document   : paypalJS
    Created on : 14-Jan-2018, 22:56:02
    Author     : sandr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script src="https://www.paypalobjects.com/api/checkout.js"></script>
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">   
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">    
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-purple.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-.css">
     <style>
body {font-family: "Lato", sans-serif}
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
        
        <div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="home.jsp" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    
    <a href="home.jsp#shop" class="w3-bar-item w3-button w3-padding-large" >CANCEL PAYMENT</a>
  
    <a href="javascript:void(0)" class="w3-padding-large w3-hover-red w3-hide-small w3-right"><input type="text" placeholder="Search...">&nbsp;<i class="fa fa-search"></i></a>
  </div>
</div>   
        
        
        <h2>Payment</h2>  
        
        <div id="paypal-button-container"></div>
    
    <script>
         var Total1 = ${Total1};


        paypal.Button.render({

            env: 'sandbox', // sandbox | production

            // PayPal Client IDs - replace with your own
            // Create a PayPal app: https://developer.paypal.com/developer/applications/create
            client: {
                sandbox: 'AVaWtZk0lcbHu7dmAjQPU8MEEggsk1VIbf-SkgEcvKf2RsCFWLEUsSCybSIMXK1S19zugUlDEq_0bUgb',
                production: 'AWAPUGeZypyefPIb-tCoyx2JGt73fI_UGjo1o9UyWdo_esbWHlghr-XWtlb0kXf904HHLwPQR_HL8-3I'
            },

            // Show the buyer a 'Pay Now' button in the checkout flow
            commit: true,

            // payment() is called when the button is clicked
            payment: function (data, actions) {

                // Make a call to the REST api to create the payment
                return actions.payment.create({
                    payment: {
                        transactions: [
                            {
                                amount: {total: Total1, currency: 'EUR'}
                            }
                        ]
                    }
                });
            },

            // onAuthorize() is called when the buyer approves the payment
            onAuthorize: function (data, actions) {
                // Make a call to the REST api to execute the payment
                return actions.payment.execute().then(function () {
                    window.alert('Payment Complete!');
                    callAjax();
                });
            }

        }, '#paypal-button-container');

        function callAjax(url, callback) {
            var authorized = true;
            var xmlhttp;
            // compatible with IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
                    callback(xmlhttp.responseText);
                }
            };
            xmlhttp.open("POST", CustomerServlet, true);
            xmlhttp.send(authorized);
        }
    </script>
    <center>
     <h2>Payment</h2>  
     
     <table align='center'>
         
         <tr>
             <th>
            You can make the payment by paypal. If you have paypal account please click on paypal icon above and
         follow easy steps to make final payment. If you don't have paypal account, you can open it at paypal
         official website.     
             </th>
         </tr>
         
     </table>
    </center>
    <br>
     <!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity w3-light-grey w3-xlarge">
    
    
    
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
