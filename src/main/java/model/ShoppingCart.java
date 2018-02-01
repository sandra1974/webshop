/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author sandr
 */
import java.io.Serializable;
import java.text.NumberFormat;
import java.util.ArrayList;


public class ShoppingCart implements Serializable{
    
      private ArrayList<CartItem> items;

    public ShoppingCart() {
        items = new ArrayList<>();
    }

    public ArrayList<CartItem> getItems() {
        return items;
    }

    public int getCount() {
        return items.size();
    }

    public void addItem(CartItem item) {
        int id = item.getProduct().getId();
        int quantity = item.getQuantity();
        for (int i = 0; i < items.size(); i++) {
            CartItem lineItem = items.get(i);
            if (lineItem.getProduct().getId() == id) {
                lineItem.setQuantity(quantity);
                return;
            }
        }
        items.add(item);
    }

    public void removeItem(CartItem item) {
        int id = item.getProduct().getId();
        for (int i = 0; i < items.size(); i++) {
            CartItem lineItem = items.get(i);
            if (lineItem.getProduct().getId() == id) {
                items.remove(i);
                return;
            }
        }
    }

    public double calculateOverallTotal(ShoppingCart cart) {
        double overallTotal = 0;
        for (CartItem item : items) {
            double itemTotal = item.getTotal();
            overallTotal += itemTotal;
        }
        return (overallTotal);
    }

    public String getOverallTotalCurrencyFormat(double total) {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        ShoppingCart cart = null;
        return currency.format(calculateOverallTotal(cart));
    }
    
}
