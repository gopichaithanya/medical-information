<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" type="text/css" media="screen"
	href="../css/departmentform.css" />
<style type="text/css" media="screen">
@import "../css/departmentform.css";
</style>
<link rel="stylesheet" type="text/css" media="screen"
	href="../css/index.css" />
<style type="text/css" media="screen">
@import "../css/index.css";
</style>
<script type="text/javascript" src="../js/cb.js"></script>
<title>科室信息</title>
</head>
<body id="twoColLayout" class="register">

	<div id="wrapper">
		<jsp:include page="../../../inc/header.jsp" flush="true"></jsp:include>
		<jsp:include page="../../../inc/sideContent.jsp" flush="true"></jsp:include>
		<div id="primaryContent">
			<div class="box adddep">
				<h2>科室信息</h2>
				<div class="cbb">

					<form id="adddep_form" action="#" method="post">

						<fieldset>
							<legend>Your Contact Details</legend>
							<p>
								<label for="author">Name: <em class="required">(Required)</em></label>
								<input name="author" id="author" type="text" />
							</p>

							<p>
								<label for="email">Email Address:</label> <input name="email"
									id="email" type="text" />
							</p>

							<p>
								<label for="url">Web Address:</label> <input name="url" id="url"
									type="text" />
							</p>
						</fieldset>

						<fieldset>
							<legend>Comments</legend>
							<p>
								<label for="text">Message: <em class="required">(Required)</em></label>
								<textarea name="text" id="text" cols="20" rows="10"></textarea>
							</p>
						</fieldset>

					</form>
				</div>
			</div>
			<!-- end #primaryContent -->
		</div>

		<jsp:include page="../../../inc/footer.jsp" flush="true"></jsp:include>
	</div>

</body>
</html>