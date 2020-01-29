package edu.jspider.trainproject.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import edu.jspider.trainproject.dto.Train;

public class TrainOperation
{
	public Train searchById(int trainId) 
	{
		Configuration config = new Configuration();
		
		config.configure();
		
		SessionFactory factory = config.buildSessionFactory();
		
		Session session = factory.openSession();
		
		Train searchTrain = session.get(Train.class, trainId);
		
		session.close();
		
		factory.close();
		
		return searchTrain;
		
	}
	
	public boolean insertTrain(Train train)
	{
		Configuration config = new Configuration();
		
		config.configure();
		
		SessionFactory factory = config.buildSessionFactory();
		
		
		Session session = factory.openSession();
		session.save(train);
		
		try {
			session.beginTransaction().commit();
			return true;
		} catch (Exception e) {
			return false;
		}
		
		finally
		{
			session.close();
			factory.close();
		}
	}
}
