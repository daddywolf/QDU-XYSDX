<%--
<%--
  Created by IntelliJ IDEA.
  User: 姜志鹏
  Date: 2016/4/27
  Time: 22:31
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
    if (userServices.valiUser(user)) {
        if (md5.MD5(user.getPassword()).equals("E10ADC3949BA59ABBE56E057F20F883E")) {
            out.println("登陆成功! 欢迎您:" + user.getRealName() + "!<br/>");
            out.println("您是第一次登录本系统,默认密码有安全风险,请立即<strong><a href='#'> 更改密码 </a></strong>!");
            session.removeAttribute("user");
            session.setAttribute("user", user);
        } else {
            out.println("登陆成功! 欢迎您:" + user.getUsername() + "!<strong><a href='#'> 进入系统 </a></strong>");
            session.removeAttribute("user");
            session.setAttribute("user", user);
        }
    } else {
        out.println("登录失败,请检查你的密码是否正确.<strong><a href='login.jsp'> 返回 </a></strong>.");
    }
%>
</body>
</html>
