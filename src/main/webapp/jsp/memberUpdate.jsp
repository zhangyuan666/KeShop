<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="z"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/base.css">
<link rel="stylesheet" type="text/css" href="../css/member.css">
</head>
<body>
	<div id="box">
		<jsp:include page="../comm/header.jsp"></jsp:include>


		<div id="main">
			<div class="memberLogo">
				<img alt="" src="../images/icon_regster.gif">
			</div>
			<div class="memberContent">
				<form action="<%=request.getContextPath()%>/login/edit.action"
					method="post">
					<input type="hidden" value="${member.id}" name="id" />
					<table class="memberTable">
						<tr>
							<td class="leftTD">会员级别：</td>
							<td>${member.ml.levelname}</td>
						</tr>
						<tr>
							<td class="leftTD">真实姓名：</td>
							<td><input type="text" name="membername" value="${member.loginname}"></td>
						</tr>
						<tr>
							<td class="leftTD">登录账号：</td>
							<td><input type="text" name="loginname" value="${member.membername}"  disabled="disabled"></td>
						</tr>
						<tr>
							<td class="leftTD">登录密码：</td>
							<td><input type="password" name="loginpwd"></td>
						</tr>
						<tr>
							<td class="leftTD">核对密码：</td>
							<td><input type="password" name="loginPwd2"></td>
						</tr>
						<tr>
							<td class="leftTD">联系电话：</td>
							<td><input type="text" name="phone" value="${member.phone}"></td>
						</tr>
						<tr>
							<td class="leftTD">联系地址：</td>
							<td><input type="text" name="address" value="${member.address}"></td>
						</tr>
						<tr>
							<td class="leftTD">邮政编码：</td>
							<td><input type="text" name="zip" value="${member.zip}"></td>
						</tr>
						<tr>
							<td class="leftTD">电子邮箱：</td>
							<td><input type="text" name="email" value="${member.email}"></td>
						</tr>
						<tr>
							<td  colspan="2" align="center"><font
								color="green" size="6" >${message}</font></td>
						</tr>
					</table>
					<div class="saveDiv">
						<button type="submit">修改</button>
					</div>
				</form>
			</div>
		</div>


		<div id="footer">
			<div class="footerCopyDiv">版权所有：张源</div>
		</div>
	</div>
</body>
</html>