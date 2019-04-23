<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="Biz.BookOperateBiz" %> 
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setCharacterEncoding("UTF-8"); %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>My JSP 'ac_addBook.jsp' starting page</title>

      <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
</head>
<body>
     <%
  	String bookid=request.getParameter("bookid");
  	String bookname=request.getParameter("bookname");

 	BookOperateBiz bob=new BookOperateBiz();
    	int ins=bob.BookInsert(bookid, bookname);
    	if(ins==-1){
    	%>
    	  <script>
   			 alert("该书籍信息已存在，不能重复添加！");
  			 window.history.back();
    </script>
    	<% }
    	if(ins==1){
     %>
    <script>
    alert("书籍信息添加成功");
    if(confirm("是否继续添加书籍信息")){
   window.location="addBook.jsp";
   }
   else{
   window.location="home.jsp;"
   }
    </script>
    <% } %>
</body>
</html>
