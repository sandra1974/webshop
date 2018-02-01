/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author sandr
 */
import data.ProductDB;
import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.CartItem;
import model.Product;
import model.ShoppingCart;

public class ShoppingCartServlet extends HttpServlet{
    
     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ServletContext sc = getServletContext();

        String action = request.getParameter("action");
        if (action == null) {
            action = "cart";
        }

        String url = "/home.jsp";
        if (action.equals("shop")) {
            url = "/home.jsp";
        } else if (action.equals("cart")) {
            int id = Integer.parseInt(request.getParameter("id"));
            String quantityString = request.getParameter("quantity");
            

            HttpSession session = request.getSession();
            ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
            if (cart == null) {
                cart = new ShoppingCart();
            }

            int quantity;
            try {
                quantity = Integer.parseInt(quantityString);
                if (quantity < 0) {
                    quantity = 1;
                }
            } catch (NumberFormatException nfe) {
                quantity = 1;
            }

            Product product = ProductDB.selectProduct(id);

            CartItem cItem = new CartItem();
            cItem.setProduct(product);
            cItem.setQuantity(quantity);
            if (quantity > 0) {
                cart.addItem(cItem);
            } else if (quantity == 0) {
                cart.removeItem(cItem);
            }
            
           
            
            session.setAttribute("cart", cart);
            double overallTotal = cart.calculateOverallTotal(cart);
            
          
            
            
            String totalSum = cart.getOverallTotalCurrencyFormat(overallTotal);
            request.setAttribute("overallTotal", overallTotal);
            
            double charge = 5.50;
       double Total1 = overallTotal + charge;
            
            request.setAttribute("totalSum", totalSum);
            session.setAttribute("overallTotal", overallTotal);
            session.setAttribute("id", id);
           session.setAttribute("quantity", quantity);
           session.setAttribute("Total1", Total1);
           
      
           
           
            
            url = "/cart.jsp";

        } else if (action.equals("checkout")) {
           
                    
            url = "/checkout.jsp";
        }

        sc.getRequestDispatcher(url)
                .forward(request, response);
    }
    
    
    
}
