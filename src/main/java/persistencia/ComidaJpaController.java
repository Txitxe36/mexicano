/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package persistencia;

import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Persistence;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import logica.Comida;
import persistencia.exceptions.NonexistentEntityException;

/**
 *
 * @author migue
 */
public class ComidaJpaController implements Serializable {

    public ComidaJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
    
     public ComidaJpaController() {
       emf = Persistence.createEntityManagerFactory("Mexicanos_PU");
    }

    public void create(Comida comida) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(comida);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Comida comida) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            comida = em.merge(comida);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                int id = comida.getId_comida();
                if (findComida(id) == null) {
                    throw new NonexistentEntityException("The comida with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(int id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Comida comida;
            try {
                comida = em.getReference(Comida.class, id);
                comida.getId_comida();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The comida with id " + id + " no longer exists.", enfe);
            }
            em.remove(comida);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Comida> findComidaEntities() {
        return findComidaEntities(true, -1, -1);
    }

    public List<Comida> findComidaEntities(int maxResults, int firstResult) {
        return findComidaEntities(false, maxResults, firstResult);
    }

    private List<Comida> findComidaEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Comida.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public Comida findComida(int id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Comida.class, id);
        } finally {
            em.close();
        }
    }

    public int getComidaCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Comida> rt = cq.from(Comida.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
