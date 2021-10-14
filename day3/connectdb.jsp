<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.sql.*" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC 드라이버 로딩</title>
</head>
<body>
<%
	String driverClass = "org.mariadb.jdbc.Driver";

	try {
		Class.forName(driverClass);
		out.print("JDBC Driver loading  성공!<br>");
	} catch (ClassNotFoundException err) {
		out.print("JDBC Driver loading  실패!<br>");
	}
	
	//Maria DB연결
	
	String url = "jdbc:mariadb://localhost:3308";
	String id = "root";
	String pw = "0000";
	
	Connection conn = null;
	
	try{
		conn = DriverManager.getConnection(url, id, pw);
		out.print("MariaDB 서버 연결 성공!" + "<br>");
	} catch (SQLException sqlerr) {
		out.print("MariaDB 서버 연결 실패!" + "<br>");
		out.print(sqlerr.getMessage() + "<br>");
	}finally{
		if (conn != null) {
			try{
				conn.close();
				out.print("MariaDB 서버 연결 종료! <br>");
			} catch (Exception conerr) {
				conerr.printStackTrace();
			}
		}
	}
%>
</body>
</html>