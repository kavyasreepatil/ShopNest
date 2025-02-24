package buyNest.dbHandler;

import java.sql.*;

public class DataInjector {
	public static String addmember(String uname,String email,String pass, String gender,String address)  {
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String password="sosha";
		String sql = "INSERT INTO memberS VALUES(?,?,?,?,?)";
		String regStatus="";
		try {
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url, user, password);
			PreparedStatement ps=con.prepareStatement(sql);
						
				ps.setString(1, uname);
				ps.setString(2, email);
				ps.setString(3, pass);
				ps.setString(4, gender);
				ps.setString(5, address);
				
				ps.executeUpdate();
				
				regStatus="success";
		}catch(Exception ex) {
			System.out.println("Problem in adding member");
			ex.printStackTrace();
			regStatus="fail";
		}finally {
			return regStatus;
		}
	}

	
	
	
	
	
	
	
	
	public static boolean addbook(int bid,String bname,String bdesc,String author,String bimg){
		
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String password="sosha";
		String sql="INSERT INTO books VALUES(?,?,?,?,?)";
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection(url, user, password);
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, bid);
			ps.setString(2, bname);
			ps.setString(3, bdesc);
			ps.setString(4, author);
			ps.setString(5, bimg);
			ps.executeUpdate();
		}catch(Exception e){
			System.out.println("Problem in adding book");
			e.printStackTrace();
			return false;
		}			
		return true;
	}
}
