package com.org.dao;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import com.org.dto.Notes;
import com.org.utilities.Helper;

public class NotesDao {
	
	EntityManagerFactory emf=Helper.getEMF();
	public Notes fetchNotesById(int id) {
		EntityManager em = emf.createEntityManager();
		Notes notes = em.find(Notes.class, id);
		return notes;
		
	}
	
	public void deleteNotesById(int id) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		Notes notes = em.find(Notes.class, id);
		if(notes!=null) {
			et.begin();
			em.remove(notes);
			et.commit();
		}
	}
	
	public List<Notes> fetchNotesByTitle(String title) {
		EntityManager em = emf.createEntityManager();
		String jpql="select  n from Notes n where n.title=?1";
		Query query = em.createQuery(jpql);
		query.setParameter(1, title);
		List<Notes> list = query.getResultList();
		if(list.isEmpty())
			return null;
		return list;		
	}

}
