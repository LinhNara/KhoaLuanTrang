package dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import dao.UserDao;
import entity.User;

@Repository
@SuppressWarnings("unchecked")
public class UserDaoImpl implements UserDao {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<User> listAllCustomers() {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createSQLQuery(" select * from user where  delete_flg = '0' AND authority = 'U'")
				.addEntity(User.class);
		List<User> list = query.list();
		return list;
	}

	@Transactional
	public List<User> listAll() {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createSQLQuery(" select * from user where  delete_flg = '0'").addEntity(User.class);
		List<User> list = query.list();
		return list;
	}

	@Transactional
	public boolean isSameUserName(String userName) {

		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createSQLQuery("select * from user where  delete_flg = '0' and username = :userName ")
				.addEntity(User.class).setParameter("userName", userName);
		List<User> list = query.list();

		if (list.isEmpty()) {
			return false;
		} else {
			return true;
		}
	}

	@Transactional
	public boolean update(User user) {
		try {
			Session session = this.sessionFactory.getCurrentSession();
			session.saveOrUpdate(user);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Transactional
	public User getUserByUserName(String userName) {
		try {
			Session session = this.sessionFactory.getCurrentSession();
			String sql = "select * from user where  delete_flg = '0' and username = :test";
			
			SQLQuery query = session.createSQLQuery(sql);
			
			query.addEntity(User.class);
			query.setParameter("test", userName);
			return (User) query.uniqueResult();
		} catch (Exception e) {
			return null;
		}
	}

	// thu7
	@Transactional
	public long insertUser(User user) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(user);
		return 0;
	}

	@Override
	@Transactional
	public List<User> findByAuthoriation(String author) {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createSQLQuery(" select * from user where  delete_flg = '0' AND authority = :author")
				.addEntity(User.class).setParameter("author", author);

		List<User> list = query.list();
		return list;
	}

}
