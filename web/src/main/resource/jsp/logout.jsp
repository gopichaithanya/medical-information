<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" type="text/css" media="screen"
	href="../css/index.css" />
<style type="text/css" media="screen">
@import "../css/index.css";
</style>
<script type="text/javascript" src="../js/cb.js"></script>
<title>注销</title>
<link href="../css/index.css" rel="stylesheet" type="text/css">
</head>
<body id="twoColLayout" class="register">

	<div id="wrapper">
		<jsp:include page="../inc/header.jsp" flush="true"></jsp:include>
		<jsp:include page="../inc/sideContent.jsp" flush="true"></jsp:include>
		<div id="primaryContent">
			<div class="box login">
				<h2>注销</h2>
				<div class="cbb">
					<%
						request.getSession();
						session.invalidate();
					%>
					<center>
						您已经注销了！<br> <span id="time">5</span>秒钟后自动跳转，如果不跳转，请点击下面的链接：<br>
						<script language="JavaScript" type="text/javascript">
							function delayURL(url) {
								var delay = document.getElementById("time").innerHTML;
								if (delay > 0) {
									delay--;
									document.getElementById("time").innerHTML = delay;
								} else {
									window.top.location.href = url;
								}
								setTimeout("delayURL('" + url + "')", 1000);
							}
						</script>
						<a href="<%=request.getContextPath() %>/index.jsp">主页</a>
						<script type="text/javascript">
							delayURL("<%=request.getContextPath() %>/index.jsp");
						</script>
					</center>
				</div>
			</div>
			<!-- end #primaryContent -->
		</div>

		<jsp:include page="../inc/footer.jsp" flush="true"></jsp:include>
	</div>

</body>
</html>