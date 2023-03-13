package com.repository;

import java.util.ArrayList;
import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.etities.Expense;
import com.etities.UserEntity;
import com.utils.FactoryProvider;

public class ExpenseRepository {
	public static List<Expense> getExpenseList(UserEntity userEntity) {
		List<Expense> list = new ArrayList<Expense>();
		Session session = FactoryProvider.getFactory().openSession();
		Transaction  transaction = session.beginTransaction();
		Query query = session.createQuery("from Expense where userEntity =:us");
		query.setParameter("us", userEntity);
		list = query.list();
		transaction.commit();
		session.close();
		return list;
	}
	
	public static Expense getExpenseById(int id) {
		Session session = FactoryProvider.getFactory().openSession();
		Transaction transaction = session.beginTransaction();
		Query query = session.createQuery("from Expense where id =:thisId");
		query.setParameter("thisId", id);
		Expense expense = (Expense)query.uniqueResult();
		transaction.commit();
		session.close();
		return expense;
	}
}
