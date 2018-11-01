package com.lab8.database;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.lab8.models.Author;

public class DBManager extends BaseHibernate {

	private static DBManager instance;

	public static DBManager getInstance() {
		if (instance == null) {
			instance = new DBManager();
		}
		return instance;
	}
	
	private DBManager() {
		
	}

	public Author addAuthor(Author a) {
		Session session = getSession();
		Transaction trans = null;
		try {
			trans = session.beginTransaction();
            //Returns generated id
			session.save(a);
			trans.commit();
			return a;
		} catch (RuntimeException e) {
			e.printStackTrace();
			if (trans != null) {
				trans.rollback();
			}

		} finally {
			if (trans != null && trans.isActive()) {
				session.flush();
			}
			session.close();
		}
		return null;

	}
	
	public Author updateAuthor(Author a) {
		Session session = getSession();
		Transaction trans = null;
		try {
			trans = session.beginTransaction();
			session.update(a);
			trans.commit();
			return a;
		} catch (RuntimeException e) {
			e.printStackTrace();
			if (trans != null) {
				trans.rollback();
			}

		} finally {
			if (trans != null && trans.isActive()) {
				session.flush();
			}
			session.close();
		}
		return null;

	}
	
	public boolean deleteAuthor(int id) {
		Session session = getSession();
		Transaction trans = null;
		try {
			trans = session.beginTransaction();
            //Returns generated id
			session.delete(getAuthor(id));
			trans.commit();
			return true;
		} catch (RuntimeException e) {
			e.printStackTrace();
			if (trans != null) {
				trans.rollback();
			}

		} finally {
			if (trans != null && trans.isActive()) {
				session.flush();
			}
			session.close();
		}
		return false;

	}

	public Author getAuthor(int id) {
		Session session = getSession();
		Author author = null;

		try {
			author = session.find(Author.class, id);
		} catch (RuntimeException e) {
			e.printStackTrace();

		} finally {
			session.close();
		}
		return author;
	}

	public List<Author> getAuthors(int count) {
		List<Author> authors = new ArrayList<Author>();

		Session session = getSession();

		try {
			Query<Author> query = session.createQuery("from Author",Author.class);
			query.getQueryOptions().setMaxRows(count);
			authors = query.getResultList();
		} catch (RuntimeException e) {
			e.printStackTrace();
		}
		return authors;
	}
	
	public List<Author> runNativeQueryOnAuthors(String sql){
		List<Author> authors = new ArrayList<Author>();
		
		try{
			Session session = getSession();
			@SuppressWarnings("unchecked")
			List<Object[]> results = session.createNativeQuery(sql).list();
			//.executeUpdate
			if(results != null){
				for(Object[] r : results){
					authors.add(new Author(r));
				}
			}
			//
		}catch(RuntimeException e){
			e.printStackTrace();
		}
		return authors;
	}

}
