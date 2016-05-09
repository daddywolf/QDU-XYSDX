<%--
  Created by IntelliJ IDEA.
  User: 姜志鹏
  Date: 2016/4/27
  Time: 22:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆</title>
</head>
<body>
<h2>用户登录</h2>
<form action="validate.jsp" name="login" method="post" accept-charset="utf-8">
    手机号：<input type="text" name="mobile" id="mobile"><br/>
    密 码：<input type="password" name="password" id="password"><br/>
    <br/>
    <input type="submit" value="登 录">
    <input type="reset" value="重 置">
</form>

</body>
</html>
