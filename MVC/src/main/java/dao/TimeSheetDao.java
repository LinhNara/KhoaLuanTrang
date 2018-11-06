package dao;

import java.util.List;

import entity.TimeSheet;

public interface TimeSheetDao {

	/*
	 * Hàm update dữ liệu vào db khi nhân viên nhập timesheet hằng ngày
	 */
	public long insertTimesheet(TimeSheet timesheet);

	/*
	 * Hàm lấy ra toàn bộ thông tin bảng timeSheet: Đang có vấn đề: làm sao để
	 * lấy ra theo tuần or tháng or năm theo mông muốn của người dùng
	 */
	public List<TimeSheet> selectAll();
}
