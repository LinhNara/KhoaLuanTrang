package dao.impl;

import java.util.List;

import javax.transaction.Transactional;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import dao.Customers;
import entity.NhanVien;

public class CustomersDaoImpl implements Customers {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@SuppressWarnings("unchecked")
	@Transactional
	public List<NhanVien> listAll() {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createSQLQuery(" select * from user where  delete_flg = '0'").addEntity(NhanVien.class);
		List<NhanVien> list = query.list();
		return list;
	}
}
