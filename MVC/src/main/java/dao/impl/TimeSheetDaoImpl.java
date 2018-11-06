package dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import dao.TimeSheetDao;
import entity.TimeSheet;

public class TimeSheetDaoImpl implements TimeSheetDao {
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	@Transactional
	public long insertTimesheet(TimeSheet timesheet) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(timesheet);
		return 0;

	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<TimeSheet> selectAll() {
		try{
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createSQLQuery(" select * from user where  delete_flg = '0'").addEntity(TimeSheet.class);
		List<TimeSheet> list = query.list();
		return list;}
		catch (Exception e){
			throw new RuntimeException(e);
		}
	}

}
