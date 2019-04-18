<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="Bean.UserBean"%>

<%
	request.setCharacterEncoding("utf-8");
%>
<%
	response.setCharacterEncoding("utf-8");
%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<title>主页</title>
<style type="text/css">
#contrainer{margin: o auto;width: 900px;}
#header{height: 100px;margin-bottom: 5px;background-color: #2d6eba} 
#center{margin-bottom: 5px;height: 400px;}
#leftside{float: left;margin-top: 5px;width: 250px;height: 400px;background-color: #dadbe3}
#rightside{float: right;width: 645px;height: 395px;}
#footer{height: 80px;background-color: #2d6eba;}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #993300;
}
a:hover {
	text-decoration: none;
	color: #693300;
}
a:active {
	text-decoration: none;
}
</style>
    <meta http-equiv="pragma" content="no-cache">
       <meta http-equiv="cache-control" content="no-cache">
       <meta http-equiv="expires" content="0">
       <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
       <meta http-equiv="description" content="This is my Page">
       <!-- 
           <link rel = "stylesheet" type="text/css" href="style.css">
        -->
</head>
<body>
<div id="contrainer">
<!-- 页面顶部 -->
<div id="header">
   <form action="DoSearch" method="post" >
     <table border="0" width="900px" height="90px">
     <tr><td width="450px">
         <img src="images/01.jpeg" width="100" height="50px">
         <font size="+3">南京市图书馆自助服务系统</font>
         </td>
         <td rowspan="2" align="center"></td>
           <a href="login.jsp"><img src="images/01.jpeg"/></a>
           <a href="login.jsp">|sign-out|</a>
           <input type="text" name="petname" size="10"/>
           <input type="submit" name="btn" value="search" />
         </td>
         </tr>
         <tr><td width="450px"><font size="2">------言念君子，温其如玉</font></td></tr>     
     </table>
   </form>
   </div>
      <!-- 页面中部 -->
        <div id="center">
        <div id="leftside">
          <table>
            <tr><td>图书目录</td></tr>
            <tr><td><a href="###">计算机类</a></td></tr>
            <tr><td><a href="###">文学类</a></td></tr>
            <tr><td><a href="###">历史类</a></td></tr>
            <tr><td><a href="###">心理类</a></td></tr>
            <tr><td><a href="###">小说类</a></td></tr>
            <tr><td><a href="###">儿童读物类</a></td></tr>
            <tr><td><a href="###">考试教材类</a></td></tr>
          </table>
        </div>
       <div id="rightside" align="center">
       <img  src="images/01.jpeg" />
       </div>
       </div>
       <!-- 页面底部 -->
       <div id="footer" align="center">
       <br/>
       阅读使人进步
       </div>
       </div>
</body>
</html>
