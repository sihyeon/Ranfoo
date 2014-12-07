package station;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import chat.Message;

public class StationDAO {
	public static Station getStation() throws SQLException, NamingException {
		
		Station station = null;
		
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String dbUrl = "jdbc:mysql://localhost:3306/station";
		String dbUser = "id02";
		String dbPassword = "pwd02";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
		    // DB 접속
			conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
			
			// 질의 준비
			stmt = conn.prepareStatement("SELECT * FROM chats WHERE id > ? ;");
	
			rs = stmt.executeQuery();

			while (rs.next()) {
				station = new Station(rs.getString("station"), rs.getString("memberNum"));	
			}	
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			// 무슨 일이 있어도 리소스를 제대로 종료
			if (rs != null) try{rs.close();} catch(SQLException e) {}
			if (stmt != null) try{stmt.close();} catch(SQLException e) {}
			if (conn != null) try{conn.close();} catch(SQLException e) {}
		}
		return station;
	}
}
