<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/9/29
  Time: 17:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
     <%
     request.setCharacterEncoding("utf-8");
     String username=request.getParameter("uname");
     String userpassword=request.getParameter("upassword");
     out.print(username+userpassword);

     if(username!=null&&!"".equals(username)){
         if(username.equals("admin")){
             //管理员不允许手动注册
             request.setAttribute("message","管理员名称不允许手动注册,请换个名字");
             request.getRequestDispatcher("register.jsp").forward(request,response);//转发
         }else {
             //允许注册
             request.setAttribute("message","名字可以注册，注册成功");
             response.sendRedirect(request.getContextPath()+"/success.jsp?info=success");//重定向
         }
     }
     %>
</body>
</html>
