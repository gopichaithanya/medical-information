<div id="header">
	<%@ page language="java" contentType="text/html; charset=GBK"
		pageEncoding="GBK"%>
	<h1>医疗信息服务网</h1>
	<ul id="mainNav">
		<li><a href="<%=request.getContextPath() %>/index.jsp" id="home">主页</a></li>
		<li><a href="">关于</a></li>
		<li><a href="">新闻</a></li>
		<li><a href="">主菜单4</a></li>
		<li><a href="<%=request.getContextPath() %>/gallery.jsp" id="gallery">主菜单5</a></li>
		<li><a href="">主菜单6</a></li>
		<li><a href="">主菜单7</a></li>
		<li><a href="">成员</a></li>
		<li><a href="<%=request.getContextPath() %>/contact.html" id="contact">联系我们</a></li>
		<ul id="userOpt">
			<%
	    	if(session.getAttribute("user") == null) {
	    %>
			<li><a href="<%=request.getContextPath() %>/jsp/login.jsp">登录</a></li>
			<%
			} else {
	    %>
			<li><a href="<%=request.getContextPath() %>/jsp/usercenter.jsp"><%=session.getAttribute("user") %></a>
			<li><a href="<%=request.getContextPath() %>/jsp/logout.jsp">注销</a> <%
			}
	    %>
			<li><a href="<%=request.getContextPath() %>/jsp/register.jsp">注册</a></li>
		</ul>
	</ul>

	<!-- end #header -->
</div>