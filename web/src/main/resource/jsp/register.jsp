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
<title>用户注册</title>
</head>
<body id="twoColLayout" class="register">

	<div id="wrapper">
		<jsp:include page="../inc/header.jsp" flush="true"></jsp:include>
		<jsp:include page="../inc/sideContent.jsp" flush="true"></jsp:include>
		<div id="primaryContent">
			<div class="box register">
				<h2>用户注册</h2>
				<div class="cbb">
					<form id="register_form" action="RegisterServlet" method="post">
						<fieldset>
							<legend>安全信息</legend>
							<p>
								<label for="residentidcard">身份证号码：<span
									class="feedback">必须输入</span></label> <input name="residentidcard"
									id="residentidcard" type="text" />
							</p>

							<p>
								<label for="password">密码：</label>
								<input name="residentpwd" id="password" type="password" />
							</p>

							<p>
								<label for="password">确认密码：</label>
								<input name="residentpwd2" id="password" type="password" />
							</p>
							<p>
								<label>验证码：</label>
								<input name="checkcode" id="checkcode" type="text"><img
									src="checkcode.jsp">
							</p>

						</fieldset>

						<fieldset>
							<legend>个人资料</legend>
							<p>
								<label for="name">姓名：<span class="required">(必填)</span></label>
								<input name="residentname" id="name" type="text" />
							</p>

							<fieldset id="radio-checkbox">
								<h4>性别：</h4>
								<div>
									<p>

										<input id="gender-male" class="radio" name="gender"
											type="radio" value="男" checked="checked" /> <label
											for="gender-male">男</label>
									</p>
								</div>
								<div>
									<p>
										<input id="gender-famale" class="radio" name="gender"
											type="radio" value="女" /> <label for="gender-famale">女</label>
									</p>
								</div>
								<br class="clear" />
							</fieldset>

							<p>
								<label for="birthday">出生日期：</label> <input
									name="birthday" id="birthday" type="text" />
							</p>

							<p>
								<label for="national">民族：</label>
								<input name="national" id="national" type="text" />
							</p>


							<fieldset id="radio-checkbox">
								<h4>婚姻状况：</h4>
								<div>
									<p>
										<input class="radio" id="single" name="matiralStatus"
											type="radio" value="未婚" /> <label>未婚</label>
									</p>
									<p>
										<input class="radio" id="married" name="matiralStatus"
											type="radio" value="已婚" /> <label>已婚</label>
									</p>
									<p>
										<input class="radio" id="divorced" name="matiralStatus"
											type="radio" value="离异" /> <label>离异</label>
									</p>
								</div>
								<div>
									<p>
										<input class="radio" id="widowed" name="matiralStatus"
											type="radio" value="丧偶" /> <label>丧偶</label>
									</p>
									<p>
										<input class="radio" id="cohabitation" name="matiralStatus"
											type="radio" value="同居" /> <label>同居</label>
									</p>
								</div>
								<br class="clear" />
							</fieldset>
						</fieldset>

						<fieldset>
							<legend>联系方式</legend>
							<p>
								<label for="homeaddress">家庭住址：</label> <input
									name="homeaddress" id="homeaddress" type="text" />
							</p>
							<p>
								<label for="zipcode">邮政编码：</label> <input
									name="zipcode" id="zipcode" type="text" />
							</p>
							<p>
								<label for="telphone">联系电话：</label> <input
									name="telphone" id="telphone" type="text" />
							</p>
							<p>
								<label for="permanentaddr">永久通讯地址：</label> <input
									name="permanentaddr" id="permanentaddr" type="text" />
							</p>
							<br class="clear">
						</fieldset>
						<fieldset>
							<legend>工作情况</legend>
							<p>
								<label for="company">公司名称：</label> <input
									name="company" id="company" type="text" />
							</p>
							<p>
								<label for="companytel">公司联系电话：</label> <input name="companytel"
									id="companytel" type="text" />
							</p>
						</fieldset>

						<fieldset id="remember-me">
							<legend>记住我</legend>
							<p>
								<input id="remember-yes" class="radio" name="remember"
									type="radio" value="yes" /> <label for="remember-yes">是</label>
								<input id="remember-no" class="radio" name="remember"
									type="radio" value="no" checked="checked" /> <label
									for="remember-no">否</label> <br class="clear" />
							</p>
						</fieldset>
						<p>
							<input id="submit" class="submit" name="submit" value="注册"
								type="submit" /> <input id="reset" class="reset" name="reset"
								value="重置" type="reset" />
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