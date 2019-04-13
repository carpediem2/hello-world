<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
  String path = request.getContextPath();
  String basePase = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<!base href="<%=basePath%>">
<meta charset="utf-8">
<title>My JSP 'login.jsp' starting page</title>
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
<%
   request.setCharacterEncoding("utf-8");
   String users = request.getParameter("username");
   String password = request.getParameter("pwd");
   boolean flag = false;
   PreparedStatement sql = null;
   ResultSet rs = null;
   Connection conn = null;
%>

<%
   String driver = "com.mysql.jdbc.Driver";
   String url = "jdbc:mysql://这里填注册表地址";
   String use = "root";
   //String password = "还未注册";
   Class.forName(driver);
   conn = DriverManager.getConnection(url,use,password);
   sql = conn.prepareStatement("select*from student where username=? and password=?");
   sql.setString(1, users);
   sql.setString(2, password);
   rs = sql.executeQuery();
   if(rs.next()){
	   flag=true;
   }
   rs.close();
   sql.close();
   conn.close();
%>
<!-- 判断是否是正确的登录用户 -->
<%  
if(flag==true){ %>
	<jsp:forward page="home.jsp" />
<%}
else if(flag==false){
%>
<% out.println("登录失败"); %>
<% response.setHeader("refresh", "5;url=login.jsp"); %>
<%}
%>
</body>
</html>
