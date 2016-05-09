<%@ page import="model.UserInfo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--判断是否已登录——从session里取值,若空,返回index--%>
<%
    UserInfo user = (UserInfo) session.getAttribute("user");
    if (user == null) {
%>
<jsp:forward page="login/login.jsp"></jsp:forward>
<%
    }
%>
