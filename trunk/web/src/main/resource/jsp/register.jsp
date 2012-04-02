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
<title>�û�ע��</title>
</head>
<body id="twoColLayout" class="register">

	<div id="wrapper">
		<jsp:include page="../inc/header.jsp" flush="true"></jsp:include>
		<jsp:include page="../inc/sideContent.jsp" flush="true"></jsp:include>
		<div id="primaryContent">
			<div class="box register">
				<h2>�û�ע��</h2>
				<div class="cbb">
					<form id="register_form" action="RegisterServlet" method="post">
						<fieldset>
							<legend>��ȫ��Ϣ</legend>
							<p>
								<label for="residentidcard">���֤���룺<span
									class="feedback">��������</span></label> <input name="residentidcard"
									id="residentidcard" type="text" />
							</p>

							<p>
								<label for="password">���룺</label>
								<input name="residentpwd" id="password" type="password" />
							</p>

							<p>
								<label for="password">ȷ�����룺</label>
								<input name="residentpwd2" id="password" type="password" />
							</p>
							<p>
								<label>��֤�룺</label>
								<input name="checkcode" id="checkcode" type="text"><img
									src="checkcode.jsp">
							</p>

						</fieldset>

						<fieldset>
							<legend>��������</legend>
							<p>
								<label for="name">������<span class="required">(����)</span></label>
								<input name="residentname" id="name" type="text" />
							</p>

							<fieldset id="radio-checkbox">
								<h4>�Ա�</h4>
								<div>
									<p>

										<input id="gender-male" class="radio" name="gender"
											type="radio" value="��" checked="checked" /> <label
											for="gender-male">��</label>
									</p>
								</div>
								<div>
									<p>
										<input id="gender-famale" class="radio" name="gender"
											type="radio" value="Ů" /> <label for="gender-famale">Ů</label>
									</p>
								</div>
								<br class="clear" />
							</fieldset>

							<p>
								<label for="birthday">�������ڣ�</label> <input
									name="birthday" id="birthday" type="text" />
							</p>

							<p>
								<label for="national">���壺</label>
								<input name="national" id="national" type="text" />
							</p>


							<fieldset id="radio-checkbox">
								<h4>����״����</h4>
								<div>
									<p>
										<input class="radio" id="single" name="matiralStatus"
											type="radio" value="δ��" /> <label>δ��</label>
									</p>
									<p>
										<input class="radio" id="married" name="matiralStatus"
											type="radio" value="�ѻ�" /> <label>�ѻ�</label>
									</p>
									<p>
										<input class="radio" id="divorced" name="matiralStatus"
											type="radio" value="����" /> <label>����</label>
									</p>
								</div>
								<div>
									<p>
										<input class="radio" id="widowed" name="matiralStatus"
											type="radio" value="ɥż" /> <label>ɥż</label>
									</p>
									<p>
										<input class="radio" id="cohabitation" name="matiralStatus"
											type="radio" value="ͬ��" /> <label>ͬ��</label>
									</p>
								</div>
								<br class="clear" />
							</fieldset>
						</fieldset>

						<fieldset>
							<legend>��ϵ��ʽ</legend>
							<p>
								<label for="homeaddress">��ͥסַ��</label> <input
									name="homeaddress" id="homeaddress" type="text" />
							</p>
							<p>
								<label for="zipcode">�������룺</label> <input
									name="zipcode" id="zipcode" type="text" />
							</p>
							<p>
								<label for="telphone">��ϵ�绰��</label> <input
									name="telphone" id="telphone" type="text" />
							</p>
							<p>
								<label for="permanentaddr">����ͨѶ��ַ��</label> <input
									name="permanentaddr" id="permanentaddr" type="text" />
							</p>
							<br class="clear">
						</fieldset>
						<fieldset>
							<legend>�������</legend>
							<p>
								<label for="company">��˾���ƣ�</label> <input
									name="company" id="company" type="text" />
							</p>
							<p>
								<label for="companytel">��˾��ϵ�绰��</label> <input name="companytel"
									id="companytel" type="text" />
							</p>
						</fieldset>

						<fieldset id="remember-me">
							<legend>��ס��</legend>
							<p>
								<input id="remember-yes" class="radio" name="remember"
									type="radio" value="yes" /> <label for="remember-yes">��</label>
								<input id="remember-no" class="radio" name="remember"
									type="radio" value="no" checked="checked" /> <label
									for="remember-no">��</label> <br class="clear" />
							</p>
						</fieldset>
						<p>
							<input id="submit" class="submit" name="submit" value="ע��"
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