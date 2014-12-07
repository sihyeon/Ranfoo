package chat;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.naming.*;
import javax.sql.*;

import org.apache.catalina.Context;
import org.apache.tomcat.jdbc.pool.DataSource;

public class ChatDAO {
	
	public static List<Message> getChatList(int last) throws SQLException, NamingException {
		
		List<Message> msgList = new ArrayList<Message>();
		
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String dbUrl = "jdbc:mysql://117.17.158.70/WAAP";
		String dbUser = "next9267";
		String dbPassword = "1234";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
		    // DB 접속
			conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
			
			// 질의 준비
			if (last >= 0) {
				// last 이후의 모든 메시지
				stmt = conn.prepareStatement("SELECT * FROM chats WHERE id > ? ;");
				stmt.setInt(1,  last);
			} else {
				// 마지막 10개의 메시지만..
				stmt = conn.prepareStatement("SELECT * FROM "
						+"(SELECT * FROM chats ORDER BY id DESC LIMIT 5) t " 
						+"ORDER BY id ;");
			}

			
			// 수행
			rs = stmt.executeQuery();

			while (rs.next()) {
				Message msg = new Message(rs.getInt("id"), rs.getString("name"), 
								rs.getString("message"));
				msgList.add(msg);		
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
		
		return msgList;
		
	
	}
	public static boolean sendMessage(Message msg) throws SQLException, NamingException, ClassNotFoundException
	{
		int result;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String dbUrl = "jdbc:mysql://117.17.158.70/WAAP";
		String dbUser = "next9267";
		String dbPassword = "1234";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);

			// 질의 준비
			
			stmt = conn.prepareStatement("INSERT INTO chats(name, message) VALUES (?, ?);");
			stmt.setString(1, msg.getName());
			stmt.setString(2, msg.getContent());
			
			// 수행
			result = stmt.executeUpdate();
		} finally {
			// 무슨 일이 있어도 리소스를 제대로 종료
			if (rs != null) try{rs.close();} catch(SQLException e) {}
			if (stmt != null) try{stmt.close();} catch(SQLException e) {}
			if (conn != null) try{conn.close();} catch(SQLException e) {}
		}
		
		return (result == 1);
	}
	

}
