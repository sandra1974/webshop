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
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;
import model.Product;


public class ProductDB {
    
     public static Product selectProduct(int id) {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT p FROM Product p "
                + "WHERE p.id = :id";
        TypedQuery<Product> q = em.createQuery(qString, Product.class);
        q.setParameter("id", id);
        Product result = null;
        try {
            result = q.getSingleResult();
        } catch (NoResultException ex) {
            return null;
        } finally {
            em.close();
        }

        return result;
    }

//    public static Product selectProduct(long productId) {
//        EntityManager em = DBUtil.getEmFactory().createEntityManager();
//        
//        return em.find(Product.class, productId);
//    }
    public static List<Product> selectProducts() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        String qString = "SELECT p from Product p";
        TypedQuery<Product> q = em.createQuery(qString, Product.class);
        List<Product> results = null;
        try {
            results = q.getResultList();
        } catch (NoResultException ex) {
            return null;
        } finally {
            em.close();
        }

        return results;
    }

    
    
    
    
}
