<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>

<div id="sideContent">
	<div class="box">
		<h2>���˵�</h2>
		<div class="cbSide">
			<ul>
				<li><a href="<%= request.getContextPath()%>/jsp/hospitalinfo.jsp" id="hospitalinfo">ҽԺ��Ϣ</a></li>
				<li><a href="b">������Ϣ</a></li>
				<li><a href="c">Richard May</a></li>
				<li><a href="d">McFaul</a></li>
				<li><a href="e">Black Convoy</a></li>
				<li><a href="f">Tim Marrs</a></li>
				<li><a href="g">Peepshow</a></li>
				<li><a href="h">Andrew Rae</a></li>
				<li><a href="i">Miles Donovan</a></li>
				<li><a href="j">Simon Collison</a></li>
				<%
					if("admin".equals(session.getAttribute("identity"))) {
				%>
						<li><a href="<%= request.getContextPath()%>/jsp/hospitalinfo.jsp" id="managehospital">����ҽԺ</a></li>
						<li><a href="<%= request.getContextPath()%>/jsp/departmentinfo.jsp" id="managedepartment">�������</a></li>
				<%
					}
				%>
			</ul>
		</div>
	</div>
	<!-- end #sideContent -->
</div>