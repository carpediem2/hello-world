<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>南京市图书馆用户登录界面</title>
</head>
<body>
     <center>
        <form action="logincheck.jsp">
        <table>
          <caption>用户登录</caption>
          <tr>
             <td>用户名：</td>
             <td>
                <input type="text" name="username" size="20">
             </td>
             </tr>
          <tr>
             <td>密码：</td>
             <td>
                <input type="text" name="pwd" size="20">
             </td>
          </tr>
          <tr>
             <td>
                <input type="submit" value="登录" />
             <td>
                <input type="reset" value="重置" />
        </table>
        </form>
          如果你还未注册，请单击<a href="register.jsp">这里</a>注册！
     </body>
  </center>
</html>
