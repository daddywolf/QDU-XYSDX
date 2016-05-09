<%@ page import="ytx.org.apache.http.cookie.SM" %><%--
  Created by IntelliJ IDEA.
  User: 姜志鹏
  Date: 2016/5/9
  Time: 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="user" class="model.UserInfo"></jsp:useBean>
<jsp:useBean id="userServices" class="service.UserServices"></jsp:useBean>
<jsp:useBean id="md5" class="encrypt.md5"></jsp:useBean>
<jsp:setProperty name="user" property="*"/>

<%
    String input = request.getParameter("SMScaptcha");
    out.print("input"+input);
    String SMSCaptcha=(String) session.getAttribute("SMSCaptcha");
    out.print("session"+SMSCaptcha);
    if (input.equals(SMSCaptcha)){
        if (userServices.register(user)){
            out.print("注册成功！");
        }else {
            out.print("注册失败！");
        }
    }else {
        out.print("手机验证码输入错误！");
    }

%>

</body>
</html>
