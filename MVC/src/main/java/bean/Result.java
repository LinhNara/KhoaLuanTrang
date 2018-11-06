package bean;

import java.util.ArrayList;
import java.util.List;

public class Result {
	private String errorCode;
	List<String> messages;
	
	public Result() {
		messages = new ArrayList<>();
	}
	
	public String getErrorCode() {
		return errorCode;
	}
	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}
	public List<String> getMessages() {
		return messages;
	}
	public void setMessages(List<String> messages) {
		this.messages = messages;
	}
}
