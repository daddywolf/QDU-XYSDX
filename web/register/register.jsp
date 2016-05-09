<%--
  Created by IntelliJ IDEA.
  User: 姜志鹏
  Date: 2016/4/27
  Time: 22:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <script src="/js/jquery-2.2.3.js"></script>
</head>
<body>
<h2>用户注册</h2>
<form action="action.jsp" name="register" id="register" method="post" accept-charset="utf-8">
    手机号：<input type="tel" name="mobile" id="mobile"><br/>

    验证码： <input type="tel" name="getcaptcha" minlength="4" maxlength="4" id="getcaptcha"
                placeholder="请输入4位数字验证码"> <img src="/getcaptcha.sl" alt="验证码" name="checkImg" id="checkImg"
                                               style="position:relative; top:5px; left:20px; "
                                               onClick="document.getElementById('checkImg').src='/getcaptcha.sl?temp='+ (new Date().getTime().toString(36)); return false"/>
    &nbsp;&nbsp;
    <script>
        function showtime(t){
            document.register.getSMScaptcha.disabled=true;
            for(i=0;i<=t;i++) {
                window.setTimeout("update_p(" + i + ","+t+")", i * 1);
            }

        }
        function update_p(num,t) {
            if(num == t) {
                document.register.getSMScaptcha.value =" 重新发送 ";
                document.register.getSMScaptcha.disabled=false;
            }
            else {
                printnr = t-num;
                document.register.getSMScaptcha.value = " (" + printnr +")秒后重新发送";
            }
        }

        $(document).ready(function () {

            $("#getSMScaptcha").click(function () {
                var input = document.getElementById("mobile").value;
                $.post("/GetSMSCaptcha",
                        {
                            mobile: input,
                        });
            });
        });
        //        function getSMScap() {
        //            var input = document.getElementById("getcaptcha").value;
        //            if (input == 1234) {
        //                alert("验证码已发送，请注意查收！");
        //            } else {
        //                alert("您输入的验证码有误，请重新输入！");
        //            }
        //        }
    </script>
    <input type="button" id="getSMScaptcha" onclick="showtime()" value="获取手机验证码">

    <br/>
    手机验证码：<input type="tel" name="SMScaptcha" id="SMScaptcha"> <br/>
    登陆密码1：<input type="password" name="password" id="password"><br/>
    登陆密码2：<input type="password" name="password2" id="password2"><br/>
    <input type="submit" value="登 录">
    <input type="reset" value="重 置">
</form>

</body>
</html>
