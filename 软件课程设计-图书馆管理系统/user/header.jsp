<%@ page language="java"  pageEncoding="UTF-8"%>
  <div id="header">
   <form action="DoSearch" method="post" >
     <table border="0" width="960px" height="80px">
     <tr><td width="450px">
         <img src="images/01.jpg" width="10" height="5px">
         <font size="+3">南京市图书馆自助服务系统</font>
         </td>
         <td rowspan="2" align="center">
           <a href="login.jsp"><img src="images/01.jpg"/></a>
           <a href="login.jsp">|sign-out|</a>
           <input type="text" name="petname" size="10"/>
           <input type="submit" name="btn" value="search" />
         </td>
         </tr>
         <tr><td width="400px"><font size="2">------言念君子，温其如玉</font></td></tr>     
     </table>
   </form>
   </div>
