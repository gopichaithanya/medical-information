<div id="header">
	<%@ page language="java" contentType="text/html; charset=GBK"
		pageEncoding="GBK"%>
	<h1>ҽ����Ϣ������</h1>
	<ul id="mainNav">
		<li><a href="<%=request.getContextPath() %>/index.jsp" id="home">��ҳ</a></li>
		<li><a href="">����</a></li>
		<li><a href="">����</a></li>
		<li><a href="">���˵�4</a></li>
		<li><a href="<%=request.getContextPath() %>/gallery.jsp" id="gallery">���˵�5</a></li>
		<li><a href="">���˵�6</a></li>
		<li><a href="">���˵�7</a></li>
		<li><a href="">��Ա</a></li>
		<li><a href="<%=request.getContextPath() %>/contact.html" id="contact">��ϵ����</a></li>
		<ul id="userOpt">
			<%
	    	if(session.getAttribute("user") == null) {
	    %>
			<li><a href="<%=request.getContextPath() %>/jsp/login.jsp">��¼</a></li>
			<%
			} else {
	    %>
			<li><a href="<%=request.getContextPath() %>/jsp/usercenter.jsp"><%=session.getAttribute("user") %></a>
			<li><a href="<%=request.getContextPath() %>/jsp/logout.jsp">ע��</a> <%
			}
	    %>
			<li><a href="<%=request.getContextPath() %>/jsp/register.jsp">ע��</a></li>
		</ul>
	</ul>

	<!-- end #header -->
</div>