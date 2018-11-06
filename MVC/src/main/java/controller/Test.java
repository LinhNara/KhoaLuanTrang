package controller;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class Test {
	public static void main(String[] args) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String str = encoder.encode("12345678");
		System.out.println(str);
		
		
		boolean match = encoder.matches("12345678", "$2a$10$x.2dH5dYgIoVKRNx8CNyo.3KI3nyKsXzfD4A132VtlLkJIyg//T1W");
		System.out.println(match);
		try{  
//			Class.forName("com.mysql.jdbc.Driver");  
//			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/mvc_nara","root","");  
			//here sonoo is database name, root is username and password  
//			Statement stmt=(Statement) con.createStatement();  
//			ResultSet rs=stmt.executeQuery("select * from emp");  
//			while(rs.next())  
//				System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));  
//			con.close();  
			}catch(Exception e){ 
				System.out.println(e);  
			}  
	}
}
