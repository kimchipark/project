<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/popupstyle.css"/>
<script src="../js/jquery-3.6.0.js"></script>
</head>
<body>
	<script>
		window.onload = function()
		{
			$("#pwcheck").focus();
		}
		function DoCheck()
		{
			if($("#pwcheck").val() == "")
			{	
				alert("��й�ȣ�� �Է� ���ּ���");
				$("#pwcheck").focus();
				return false;
			}
			
			if(confirm("���� ���� �Ͻðڽ��ϱ�?") != 1)
			{
				return false;
			}
			document.location ="uquit.jsp";
			return true;
		}
	</script>
	<form method="post" id="check" action="uquit.jsp">
		<table style="width:480px; height:180px;" border="0">
			<tr>
				<td align="center" valign="bottom">��й�ȣ�� �Է� ���ּ���<br><input type="password" id="pwcheck"></td>
			</tr>
			<tr>
				<td align="center" valign="top"><input type="button" value="Ȯ��" onclick="return DoCheck();"></td>
			</tr>
		</table>	
	</form>	
</body>
</html>