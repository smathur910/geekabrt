package edu.jspider.trainproject.dao;

import java.util.*;

import org.hibernate.Session;
import org.hibernate.Query;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import edu.jspider.trainproject.dto.User;

public class UserOperation 
{
	public boolean validateforLogin(String user, String pass)
	{
		Configuration config = new Configuration();
		
		config.configure();
		
		SessionFactory factory = config.buildSessionFactory();
		
		Session session  = factory.openSession();
		
		String hql = "from User where username = :user and password = :pass";
		
		Query query = session.createQuery(hql);
		query.setString("user",user);
		query.setString("pass",pass);
		
		
		
		List<User> userCol = query.list();
//		System.out.println(userCol);
//		System.out.println(userCol.isEmpty());
		return userCol.isEmpty();
		
	}

	public boolean registerUser(User user)
	{
		Configuration config = new Configuration();
		
		config.configure();
		
		SessionFactory factory = config.buildSessionFactory();
		
		Session session  = factory.openSession();
		
		session.save(user);
		
		try
		{
		
			session.beginTransaction().commit();
			return true;
		} 
		catch (Exception e)
		{
			e.printStackTrace();
			return false;
		}
	
	}

	
}
