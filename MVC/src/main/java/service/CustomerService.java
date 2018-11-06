package service;

import java.util.List;

import entity.NhanVien;

public interface CustomerService {
	//Lấy ra toàn bộ nhân viên
	public List<NhanVien> listAll();
}
