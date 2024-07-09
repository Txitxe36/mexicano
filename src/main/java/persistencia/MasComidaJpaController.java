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
import logica.MasComida;
import persistencia.exceptions.NonexistentEntityException;

/**
 *
 * @author migue
 */
public class MasComidaJpaController implements Serializable {

    public MasComidaJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
    
    public MasComidaJpaController() {
       emf = Persistence.createEntityManagerFactory("Mexicanos_PU");
    }

    public void create(MasComida masComida) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(masComida);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(MasComida masComida) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            masComida = em.merge(masComida);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                int id = masComida.getId_masComida();
                if (findMasComida(id) == null) {
                    throw new NonexistentEntityException("The masComida with id " + id + " no longer exists.");
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
            MasComida masComida;
            try {
                masComida = em.getReference(MasComida.class, id);
                masComida.getId_masComida();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The masComida with id " + id + " no longer exists.", enfe);
            }
            em.remove(masComida);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<MasComida> findMasComidaEntities() {
        return findMasComidaEntities(true, -1, -1);
    }

    public List<MasComida> findMasComidaEntities(int maxResults, int firstResult) {
        return findMasComidaEntities(false, maxResults, firstResult);
    }

    private List<MasComida> findMasComidaEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(MasComida.class));
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

    public MasComida findMasComida(int id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(MasComida.class, id);
        } finally {
            em.close();
        }
    }

    public int getMasComidaCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<MasComida> rt = cq.from(MasComida.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
