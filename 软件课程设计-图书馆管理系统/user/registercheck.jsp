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
<title>检验注册页面</title>
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
  <br>
<%
   request.setCharacterEncoding("utf-8");
   String users = request.getParameter("username");
   String password = request.getParameter("pwd");
%>
<%
   String driver = "com.mysql.jdbc.Driver";
   String url = "jdbc:mysql://这里填注册表地址";
   String use = "root";
   //String password = "还未注册";
   Class.forName(driver);
   Connection conn = DriverManager.getConnection(url,use,password);
   PreparedStatement sql = conn.prepareStatement("insert into student(username,password)values(?,?)");
   sql.setString(1, users);
   sql.setString(2, password);
   int rtn = sql.executeUpdate();
   sql.close();
   conn.close();
%>
</body>
</html>
