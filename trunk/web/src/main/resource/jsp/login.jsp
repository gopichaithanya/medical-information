<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<link rel="stylesheet" type="text/css" media="screen"
	href="../css/form.css" />
<style type="text/css" media="screen">
@import "../css/form.css";
</style>
<link rel="stylesheet" type="text/css" media="screen"
	href="../css/index.css" />
<style type="text/css" media="screen">
@import "../css/index.css";
</style>
<script type="text/javascript" src="../js/cb.js"></script>
<title>��¼</title>
<link href="../css/index.css" rel="stylesheet" type="text/css">

<script language="javascript">
	function validate(f) {
		if(/^\s*$/.test(f.residentidcard.value)) {
			alert("�������û�����");
			f.residentidcard.focus();
			f.residentidcard.select();
			return false;
		} else if(/^\s?$/.test(f.password.value)) {
			alert("���������룡");
			f.password.focus();
			f.password.select();
			return false;
		} else {
			return true;
		}
	}
</script>

</head>
<body id="twoColLayout" class="register">

	<div id="wrapper">
		<jsp:include page="../inc/header.jsp" flush="true"></jsp:include>
		<jsp:include page="../inc/sideContent.jsp" flush="true"></jsp:include>
		<div id="primaryContent">
			<div class="box login">
				<h2>��¼</h2>
				<div class="cbb">
					<form id="login_form" action="LoginServlet" method="post" name="login_form" onsubmit="return validate(this)">
						<fieldset>
							<legend>�û���¼</legend>
							<p>
								<label for="residentidcard">�û���ʶ��</label> <input
									name="residentidcard" id="residentidcard" type="text" />
							</p>
							<p>
								<label for="password">���룺</label>
								<input name="password" id="password" type="password" />
							</p>

							<p>
								<label for="author">���:
								</label> <select name="identity">
									<option value="����" selected="selected">����</option>
									<option value="ҽ����Ա">ҽ����Ա</option>
									<option value="������Ա">������Ա</option>
								</select>
							</p>
							<p>
								<label>��֤�룺</label> <input name="checkcode"
									id="checkcode" type="text"><img id="code" src="<%=request.getContextPath() %>/jsp/checkcode.jsp">
							</p>
						</fieldset>
						<fieldset id="remember-me">
							<legend>��ס��</legend>
							<p>
								<input id="remember-yes" class="radio" name="remember"
									type="radio" value="yes" /> <label for="remember-yes">��</label>
								<input id="remember-no" class="radio" name="remember"
									type="radio" value="no" checked="checked" /> <label
									for="remember-no">��</label>
							</p>
							<br class="clear" />
						</fieldset>

						<p>
							<input id="submit" class="submit" name="submit" value="��¼"
								type="submit" /> <input id="reset" class="reset" name="reset"
								value="����" type="reset" />
						</p>
					</form>
				</div>
			</div>
			<!-- end #primaryContent -->
		</div>

		<jsp:include page="../inc/footer.jsp" flush="true"></jsp:include>
	</div>

</body>
</html>