package bean;
import java.sql.*;
public class DBean {
	private String driverStr = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private String connStr = "jdbc:sqlserver://localhost:1433; DatabaseName=Test";
	private String dbusername = "ZXC";
	private String dbpassword = "123";
	private Connection conn = null;
	private Statement stmt = null;
	 
	public DBean()
	{
		try
		{
			Class.forName(driverStr);
			conn = DriverManager.getConnection(connStr, dbusername, dbpassword);
			stmt = conn.createStatement();
		} 
		catch (Exception ex) {
			System.out.println("�޷�ͬ���ݿ⽨�����ӣ�");
		} 
		
	}

public int executeUpdate(String s) {
	int result = 0;
	try {
		result = stmt.executeUpdate(s);
	} catch (Exception ex) {
		System.out.println("ִ�и��´���");
	}
	return result;
}

public ResultSet executeQuery(String s) {
	ResultSet rs = null;
	try {
		rs = stmt.executeQuery(s);
	} catch (Exception ex) {
		System.out.println("ִ�в�ѯ����");
	}
	return rs;
}
public void execQuery(String s){
	try {
		stmt.executeUpdate(s);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		System.out.println("ִ�в������");
	}
}

public void close() {
	try {
		stmt.close();
		conn.close();
	} catch (Exception e) {
	}
}
}
