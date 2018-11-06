package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.Customers;
import entity.NhanVien;
import service.CustomerService;

@Service("CustomerServiceImpl")
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	Customers Customers;

	@Override
	public List<NhanVien> listAll() {
		return this.Customers.listAll();
	}

}
