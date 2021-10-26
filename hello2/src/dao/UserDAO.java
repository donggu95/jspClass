package dao;

import java.sql.*;
import javax.naming.NamingException;

import util.ConnectionPool;

import java.util.*;

public class UserDAO {

	public boolean insert(String uid, String upass, String uname) 
			throws NamingException, SQLException {
	Connection conn = null;
	PreparedStatement stmt = null;
		
	try {
		String sql = "INSERT INTO user(id,password, name) VALUES(?,?,?)";
		
		conn = ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, uid);
			stmt.setString(2, upass);
			stmt.setString(3, uname);
		
		int count = stmt.executeUpdate();
		return (count> 0) ? true : false;	
		
	} finally {
		if (stmt != null) stmt.close();
		if (conn != null) conn.close();
	}
	}
	
	

	public boolean delete(String uid) 
			throws NamingException, SQLException {
	Connection conn = null;
	PreparedStatement stmt = null;
		
	try {
		String sql = "DELETE FROM user WHERE id = ?";
		
		conn = ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, uid);
		
		int count = stmt.executeUpdate();
		return (count> 0) ? true : false;	
		
	} finally {
		if (stmt != null) stmt.close();
		if (conn != null) conn.close();
	}
	}
	
	public boolean exist(String uid) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			String sql = "SELECT id FROM user WHERE id = ?";
			
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
			stmt.setNString(1, uid);
		
			rs = stmt.executeQuery();
			return rs.next();
		} finally {
			if (rs != null) rs.close();
			if (stmt != null) stmt.close();
			if (conn != null) conn.close();
		}
	}
	
	public int login(String uid, String upass) throws 
	NamingException, SQLException {
	
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	try {
		String sql = "SELECT id, password FROM user WHERE id = ?";
		
		conn = ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		stmt.setNString(1, uid);
		
		rs = stmt.executeQuery();
		if (!rs.next()) return 1;
		if (!upass.contentEquals(rs.getNString("password"))) return 2;
		
		return 0;
		//0 - 아이디 패스워드 문제 없을때
		//1 - 아이디가 존재하지 않습니다.
		//2 - 비번이 맞지 않을 경우
	}finally {
		if (rs != null) rs.close();
		if (stmt != null) stmt.close();
		if (conn != null) conn.close();
	}
	}
}







