<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

Connection conn = null;
PreparedStatement pstmt = null;
//JDBC 드라이버 로딩
String driverClass = "org.maria.jdbc.Driver";

try{
	Class.forName(driverClass);	
	out.print("JDBC Driver load 성공!");
} catch (ClassNotFoundException err) {
	out.print("JDBC Driver load 실패!");
}

// MariaDB 서버 연결

String url = "jdbc:mariadb://localhost:3308/";
String id = "root";
String pw = "0000";

try {
	conn = DriverManager.getConnection(url, id, pw);
	out.print("MariaDB 연결 성공 !");






} catch (SQLException sqlerr) {
	out.print("실패 !");
	out.print(sqlerr.getMessage());
} finally {
	
}



%>



</body>
</html>