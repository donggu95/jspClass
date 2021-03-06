<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 등록 폼</title>
</head>
<body>
<!-- 
	브라우저에서 서버로 정보를 전송하는 방식에는 get 방식과 post방식이 있다. 
	get은 url뒤에 문자열로 헤더에 포함되어 전송. 주소에 보이게 전송, 보안 취약(노출)
	post는 몸체에 포함되어 전송된다. 보이지 않게 전송, 보안 우수, 한글 깨짐 현상
 -->

	<form name="customer_form" method="post" action="formstudent_insert.jsp">
		<table>
			<caption>학생 정보 입력</caption>
			<tr>
				<th><span class="msg_red">*</span>학번</th>
				<td><input type="text" name="hakbun" size="11" maxlength="10"></td>
			</tr>
			<tr>
				<th><span class="msg_red">*</span>이름</th>
				<td><input type="text" name="name" size="11" maxlength="10" required></td>
			</tr>
			<tr>
				<th><span class="msg_red">*</span>학년</th>
				<td><input type="radio" name="year" value="1">1학년 &nbsp;&nbsp;&nbsp;     
					<input type="radio" name="year" value="2">2학년 &nbsp;&nbsp;&nbsp;     
					<input type="radio" name="year" value="3">3학년 &nbsp;&nbsp;&nbsp;     
					<input type="radio" name="year" value="4">4학년 &nbsp;&nbsp;&nbsp;     
					</td>
			</tr>
			<tr>
				<th><span class="msg_red">*</span>전공</th>
				<td><input type="text" name="dept" size="11" maxlength="10" required></td>

			</tr>
			<tr>
				<th><span class="msg_red">*</span>주소</th>
				<td><input type="text" name="addr" size="40" maxlength="40" required></td>

			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
					<input type="submit" value="전송">
					<input type="reset" value="취소">
				</td>
			</tr>
		</table>

	</form>
</body>
</html>