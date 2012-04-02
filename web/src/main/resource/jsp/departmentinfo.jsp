<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">

<title>科室信息</title>

<link href="../css/index.css" rel="stylesheet" type="text/css">
<style type="text/css" media="screen">
@import "../css/index.css";
</style>
<script type="text/javascript" src="../js/cb.js"></script>
</head>
<body id="twoColLayout" class="departmentinfo">
	<div id="wrapper">
		<jsp:include page="../inc/header.jsp" flush="true"></jsp:include>
		<jsp:include page="../inc/sideContent.jsp" flush="true"></jsp:include>
		<div id="primaryContent">
			<div class="box pic">
				<h2>科室信息</h2>
				<div class="cbb">
						<img src="<%=request.getContextPath()%>/image/humanbody.jpg"
							width="640" height="425" alt="Richard, Andy and Jeremy"/>
						<ul>
							<li class="rich"><a href="" title="Richard Rutter"><span
									class="hotspot"></span><span class="link">&raquo;
										Richard Rutter</span></a></li>
							<li class="andy"><a href="" title="Andy Budd"><span
									class="hotspot"></span><span class="link">&raquo; Andy
										Budd</span></a></li>
							<li class="jeremy"><a href="" title="Jeremy Keith"><span
									class="hotspot"></span><span class="link">&raquo; Jeremy
										Keith</span></a></li>
						</ul>
				</div>
			</div>
			<!-- end #primaryContent -->
		</div>

		<jsp:include page="../inc/footer.jsp" flush="true"></jsp:include>
	</div>

</body>
</html>