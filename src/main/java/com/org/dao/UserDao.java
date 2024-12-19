package com.org.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;


import com.org.dto.User;
import com.org.utilities.Helper;

public class UserDao {
	
	public void saveAndUpdateUser(User user) {
		EntityManagerFactory emf=Helper.getEMF();
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		
		et.begin();
		em.merge(user);
		et.commit();
		
	}
	
	public User loginUser(String email,String password) {
		EntityManagerFactory emf=Helper.getEMF();

		EntityManager em = emf.createEntityManager();
		String jpql="select e from User e where e.email=?1 and e.password=?2";
		Query query = em.createQuery(jpql);
		query.setParameter(1, email);
		query.setParameter(2, password);
		List<User>  userlist= query.getResultList();
		if(userlist.isEmpty())
			return null;
		return userlist.get(0);
	}
	
	public void deleteUser(User user) {
		EntityManagerFactory emf=Helper.getEMF();

		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		User user2 = em.find(User.class, user.getId());
		if(user2!=null) {
			et.begin();
			em.remove(user2);
			et.commit();
		}
		
	}
	
	public User fetchUserById(int id) {
		EntityManagerFactory emf=Helper.getEMF();

		EntityManager em = emf.createEntityManager();
		User user = em.find(User.class,id );
		return user;
		
	}

}
