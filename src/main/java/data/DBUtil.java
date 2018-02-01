/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

/**
 *
 * @author sandr
 */
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class DBUtil {
    
     private static final EntityManagerFactory emf =
            Persistence.createEntityManagerFactory("WebShop_war_1.0-SNAPSHOTPU");
    
    public static EntityManagerFactory getEmFactory() {
        return emf;
    }
    
}
