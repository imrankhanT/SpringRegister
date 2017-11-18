package com.bridgelabz.DAO;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bridgelabz.model.Employee786;

@Repository
public class DAOTask implements DAOMethods {

	@Autowired
	SessionFactory sessionFactory;

	public boolean register(Employee786 employees) {
		Session session = sessionFactory.getCurrentSession();
		Query<?> query = session.createQuery("from Employee786");
		List<?> list = query.list();
		Iterator<?> iterator = list.iterator();
		boolean found = true;
		while (iterator.hasNext()) {
			Employee786 emp = (Employee786) iterator.next();
			if (emp.getMail().equals(employees.getMail()) || emp.getPhone().equals(employees.getPhone())) {
				return false;
			}
		}
		if (found)
			session.save(employees);
		return true;
	}

	public String login(Employee786 employees) {
		System.out.println(sessionFactory);
		Session session = sessionFactory.getCurrentSession();
		Query<?> query = session.createQuery("from Employee786");

		List<?> list = query.list();
		Iterator<?> iterator = list.iterator();

		while (iterator.hasNext()) {
			Employee786 emp = (Employee786) iterator.next();
			if (emp.getMail().equals(employees.getMail()) && emp.getPassword().equals(emp.getPassword())) {
				return emp.getName();
			}
		}
		return null;
	}

}
