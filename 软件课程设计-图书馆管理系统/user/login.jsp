<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>南京市图书馆用户登录界面</title>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<center>
<title>南京市图书馆用户登录界面</title>
<style type="text/css">
.a{
border-collapse: collapse;
}
#contrainer{margin: 0 auto;width: 900px;}
#header{height: 100px;margin-bottom: 5px;background-image: url("01.jpeg") no-repeat 5px 5px;}
#center{padding-bottom: 200px;margin-bottom: 5px;background-color: #dadbe3;padding-top: 150px;}
#footer{height: 80px;background-color: #2d6eba;}
</style>
</center>
       <meta http-equiv="pragma" content="no-cache">
       <meta http-equiv="cache-control" content="no-cache">
       <meta http-equiv="expires" content="0">
       <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
       <meta http-equiv="description" content="This is my Page">
       <!-- 
       <link rel="stylesheet" type="text/css" href="styles.css">
        -->
</head>
<body style="background-image: url('images/01.jpeg');background-repeat: repeat-x;">
     <h1 align="center">南京市图书馆用户登录系统</h1>
     <center>
        <form action="logincheck.jsp" method="post" accept-charset="gbk">
        <table  class="a" border="2" width="400px" height="100px" >
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
      </center>
    </body>
</html></head>
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
