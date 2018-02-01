/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

/**
 *
 * @author sandr
 */
import data.ProductDB;
import model.Product;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class CartContextListener implements ServletContextListener {
    
    @Override
    public void contextInitialized(ServletContextEvent event) {

        ServletContext sc = event.getServletContext();


        // initialize the list of products
        List <Product> products = ProductDB.selectProducts();
        sc.setAttribute("products", products);
    }

    @Override
    public void contextDestroyed(ServletContextEvent event) {
        // no cleanup necessary
    }
    
    
}
