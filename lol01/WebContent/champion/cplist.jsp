<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../include/mainhead.jsp" %>
<script>
function DoCpAdd()
{
	window.open("../admin/cpadd.jsp", "_cpadd",
	"width=600,height=550");	
}


function DoCpDelete()
{
	if(confirm("�����Ͻðڽ��ϱ�?") == 1)
	{
		window.open("../admin/cpdelete.jsp", "_cpdelete",
		"width=600,height=550");	
	}
}

//���콺 over�� �ߵ��Ǵ� �޼ҵ�
function DoDetail(obj)
{
	//�޼ҵ尡 ����Ǹ� div�� ����������
	$("#cpdetail").css("display","");
	
	//���콺�� �����϶� ����ٴϴ� �ڵ�
	$(document).mousemove(
		function(e) {
	      mouseX = e.pageX;
	      mouseY = e.pageY;
	      $('#cpdetail').css("left", mouseX+15).css("top", mouseY+15);
	 });
	
	//���콺�� ������ ������ �ʰ���.
	$(this).mouseleave(
		function()
		{
			$("#cpdetail").css("display","none");
		}		
	);
}
</script>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<table  class="inner" border="0" style="width:100%;">
	<tr>
		<td>è�Ǿ� ����Դϴ�.</td>
		<td align="center"><a href="javascript:DoCpAdd();">è�Ǿ� �߰�</a></td>
		<td align="center"><a href="#" onclick="DoCpDelete();">è�Ǿ� ����</a></td>
	</tr>
</table>
<div class= "inner_a">
	<table border="0" style="width:100%;">
		<tr>
			<td><a>��������</a></td>
		</tr>
		<tr>
			<td align="center">
			<form id="position" name="position" method="post">
			<input type="checkbox">&nbsp;&nbsp;����&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="checkbox">&nbsp;&nbsp;������&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="checkbox">&nbsp;&nbsp;���Ÿ�
			</td>
		</tr>
		<tr>
			<td  class="search" align="right">
			<input type="text" size="10">
			<a href="#">�˻�</a>
			</from>
			</td>
		</tr>	
	</table>
</div>
<div class="divnull">
	<br>
</div>
	<form>
		<table class="list_image" border="0" style="width:100%; height:500px">
		<tr>
			<td align="center"><input type="checkbox" id="check_cpno"><br><a href="cpinfo.jsp" onmouseenter="DoDetail(this);" id="cpimg"><img src="../img/garen_1.jpg"></a><br><a href="cpinfo.jsp">����</a></td>
			<td align="center"><input type="checkbox"><br><a href="cpinfo.jsp" onmouseenter="DoDetail(this);" id="cpimg"><img src="../img/gragas_1.jpg"></a><br><a href="cpinfo.jsp">�׶󰡽�</a></td>
			<td align="center"><input type="checkbox"><br><a href="cpinfo.jsp" onmouseenter="DoDetail(this);" id="cpimg"><img src="../img/darius_1.jpg"></a><br><a href="cpinfo.jsp">�ٸ��콺</a></td>
			<td align="center"><input type="checkbox"><br><a href="cpinfo.jsp" onmouseenter="DoDetail(this);" id="cpimg"><img src="../img/lux_1.jpg"></a><br><a href="cpinfo.jsp">����</a></td>
			<td align="center"><input type="checkbox"><br><a href="cpinfo.jsp" onmouseenter="DoDetail(this);" id="cpimg"><img src="../img/lulu_1.jpg"></a><br><a href="cpinfo.jsp">���</a></td>
		</tr>
		<tr>
			<td align="center"><input type="checkbox"><br><a href="cpinfo.jsp" onmouseenter="DoDetail(this);" id="cpimg"><img src="../img/missFortune_1.jpg"></a><br><a href="cpinfo.jsp">�̽�����</a></td>
			<td align="center"><input type="checkbox"><br><a href="cpinfo.jsp" onmouseenter="DoDetail(this);" id="cpimg"><img src="../img/vayne_1.jpg"></a><br><a href="cpinfo.jsp">����</a></td>
			<td align="center"><input type="checkbox"><br><a href="cpinfo.jsp" onmouseenter="DoDetail(this);" id="cpimg"><img src="../img/sivir_1.jpg"></a><br><a href="cpinfo.jsp">�ú�</a></td>
			<td align="center"><input type="checkbox"><br><a href="cpinfo.jsp" onmouseenter="DoDetail(this);" id="cpimg"><img src="../img/jayce_1.jpg"></a><br><a href="cpinfo.jsp">���̽�</a></td>
			<td align="center"><input type="checkbox"><br><a href="cpinfo.jsp" onmouseenter="DoDetail(this);" id="cpimg"><img src="../img/kennen_1.jpg"></a><br><a href="cpinfo.jsp">�ɳ�</a></td>
		</tr>
	</table>
</form>
<div id="cpdetail" style="display:none;">
<table border="0" style="background-color:black;">
 	<tr>
 		<td rowspan="3" style="width:30px;"><img src="../img/garen_1.jpg"></td>
 		<td style="color:#F6700E;">����, �����þ��� ��</td>
 	</tr>
 	<tr>
 		<td style="color:#8eb3b8;">Garen, The Might of Demacia</td>
 	</tr>
 	<tr>
 		<td style="color:#7cacbd;">����, ��Ŀ (ž)</td>
 	</tr>
 	<tr>
 		<td colspan="2" style="color:#a0acbd;">������ ������ ȸ�� ȿ���� ������ ���� ������ �� �ִ� è�Ǿ��Դϴ�. <br>ȸ�� �ɷ��� ������ �������� ��ȭ�Ǿ� ���� �ӵ��� ü���� ȸ���ϰ� �˴ϴ�. <br>�ñر�δ� ������ ���� ���ظ� ���� �� �־� ������ �����ϰ� ������ �� �ֽ��ϴ�.</td>
 	</tr>
</table>
</div>
<!-- ������ ��� �Ǵ°� -------------------------- -->
<%@ include file="../include/maintail.jsp" %>