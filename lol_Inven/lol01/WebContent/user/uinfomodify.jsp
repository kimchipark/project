<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>회원정보 수정</title>
		<link rel="stylesheet" href="../css/popupstyle.css"/>
	</head>
	<body>
		<form method="post" action="uinfomodifyok.jsp">
			<table class="uinfo_a"  border="1">
				<tr>
					<th align="center" colspan="3">회원 정보 수정</th>
				</tr>
				<tr>
					<td align="left">이름:
						OOO(고유값)</td>
				</tr>
				<tr>
					<td align="left">아이디:
					OOO(고유값)</td>
				</tr>
				<tr>
					<td align="center"><a href="upwmodify.jsp">비밀번호 변경</a></td>
				</tr>
				<tr>
					<td align="left">닉네임:
					<input type="text" value="기존 닉네임">수정가능</td>
				</tr>
				<tr>
					<td align="left">이메일:
					<input type="text" value="기존 이메일">@<input type="text" value="기존 이메일">수정가능</td>
				</tr>
				<tr>
					<td align="left">휴대폰:
					<input type="text" size="3" value="기존 번호">-<input type="text" size="5" value="기존 번호">-<input type="text" size="5" value="기존 번호">수정가능</td>
				</tr>
				<tr>
					<td align="left">수신동의:
					<input type="checkbox" id="receive" name="receive">메일수신동의
					<input type="checkbox" id="receive" name="receive">SMS동의
					</td>
				</tr>
				<tr>
					<td align="center" colspan="3"><a href="uinfomodifyok.jsp">수정</a></td>
				</tr>
			</table>
		</form>
	</body>
</html>