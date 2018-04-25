package com.KWE.Dao;

import java.util.logging.Level;
import java.util.logging.Logger;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.KWE.Model.PSALogin;



@Repository
public class PSAdao {

	@Autowired
    private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
	
	 Logger logger = Logger.getLogger(PSAdao.class.getName());

    public PSALogin getUserByName(String Username) {
    	PSALogin psaLogin = null;
        Session session = sessionFactory.getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query query = null;
        try {
        	
               query = session.createQuery("from PSALogin where Username='"+Username+"'");
            psaLogin =(PSALogin) query.uniqueResult();
            tx.commit();

        } catch (HibernateException e) {
        	tx.rollback();
            e.printStackTrace();
            logger.log(Level.SEVERE, null, e);
        }

        return psaLogin;
    }
	

}
