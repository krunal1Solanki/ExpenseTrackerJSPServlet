package com.repository;

import org.hibernate.Query;
import org.hibernate.Session;

import com.etities.UserEntity;
import com.utils.FactoryProvider;

public class GetLogin {
	public static UserEntity getLogin(String email, String password) {
		Session session = FactoryProvider.getFactory().openSession();
		Query query = session.createQuery("FROM UserEntity where email=:em and password=:ps");
		query.setParameter("em",email);
		query.setParameter("ps", password);
		UserEntity userEntity = null;
		userEntity = (UserEntity) query.uniqueResult();
		
		System.out.print(userEntity);
		return userEntity;
	}
}
