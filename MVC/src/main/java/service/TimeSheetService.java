package service;

import java.util.List;

import bean.Result;
import entity.TimeSheet;

public interface TimeSheetService {
	public List<TimeSheet> listAll();

	public long insertUser(TimeSheet time);

	public Result validateUser(TimeSheet time);

}
