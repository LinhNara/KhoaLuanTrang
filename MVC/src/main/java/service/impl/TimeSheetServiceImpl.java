package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import bean.Result;
import dao.TimeSheetDao;
import entity.TimeSheet;
import service.TimeSheetService;

@Service("TimeSheetServiceImpl")
public class TimeSheetServiceImpl implements TimeSheetService {
	@Autowired
	TimeSheetDao dao;

	@Override
	public List<TimeSheet> listAll() {
		return this.dao.selectAll();
	}

	@Override
	public long insertUser(TimeSheet time) {
		return this.dao.insertTimesheet(time);
	}

	@Override
	public Result validateUser(TimeSheet time) {
		Result result = new Result();
		try {
			if (org.apache.commons.lang3.StringUtils.isEmpty(time.getCongViec())) {
				result.getMessages().add("Chưa nhập công việc");
			}
			if (result.getMessages().size() == 0) {
				result.setErrorCode(common.Constant.SUCCESS);
			} else {
				result.setErrorCode(common.Constant.FAIL);
			}

		} catch (Exception ex) {
			result.getMessages().add("Có lỗi xảy ra");
			result.setErrorCode(common.Constant.FAIL);
		}
		return result;
	}

}
