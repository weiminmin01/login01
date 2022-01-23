<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/9/29
  Time: 18:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
           <%
          String message=(String) request.getAttribute("message");
          out.print(message);
           %>
           <form name="register" action="Demo01.jsp" method="get">
               <div class="login-box">
                   <label>用户名</label><input type="text" name="uname" />
                   <label>密码</label><input type="text" name="upassword" />
                   <button>登录</button>`
               </div>
           </form>
</body>
</html>
