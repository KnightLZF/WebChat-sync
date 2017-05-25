<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">

      <title>用户注册页面</title>

      <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="cache-control" content="no-cache">
          <meta http-equiv="expires" content="0">
            <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
              <meta http-equiv="description" content="This is my page">
                <!--
  	<link rel="stylesheet" type="text/css" href="styles.css">
  	-->
                <link rel="stylesheet" href="css/register.css">
                  <link rel="stylesheet" href="css/main.css"></head>

                  <body>
                    <div class="container">
                      <section id="content">
                        <form action="RegisterServlet" method="post">
                          <h1>用户注册</h1>
                          <table>
                            <tr>
                              <td>用户名：</td>
                              <td><input type="text" name="username"/></td>
                            </tr>
                            <tr>
                              <td>密码：</td>
                              <td><input type="password" name="password"/></td>
                            </tr>
                            <tr>
                              <td>确认密码：</td>
                              <td><input type="password" name="passwords"/></td>
                            </tr>
                          </table>
                          <input type="submit" value="注册用户" name="submit"/>
                          <input type="reset" value="重置" name="reset"/>
                          <br>
                            <div class="button" id="jump" style="	background: rgb(247,249,250);
                            	background: -moz-linear-gradient(top,  rgba(247,249,250,1) 0%, rgba(240,240,240,1) 100%);
                            	background: -webkit-linear-gradient(top,  rgba(247,249,250,1) 0%,rgba(240,240,240,1) 100%);
                            	background: -o-linear-gradient(top,  rgba(247,249,250,1) 0%,rgba(240,240,240,1) 100%);
                            	background: -ms-linear-gradient(top,  rgba(247,249,250,1) 0%,rgba(240,240,240,1) 100%);
                            	background: linear-gradient(top,  rgba(247,249,250,1) 0%,rgba(240,240,240,1) 100%);
                            	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f7f9fa', endColorstr='#f0f0f0',GradientType=0 );
                            	-webkit-box-shadow: 0 1px 2px rgba(0,0,0,0.1) inset;
                            	-moz-box-shadow: 0 1px 2px rgba(0,0,0,0.1) inset;
                            	-ms-box-shadow: 0 1px 2px rgba(0,0,0,0.1) inset;
                            	-o-box-shadow: 0 1px 2px rgba(0,0,0,0.1) inset;
                            	box-shadow: 0 1px 2px rgba(0,0,0,0.1) inset;
                            	-webkit-border-radius: 0 0 5px 5px;
                            	-moz-border-radius: 0 0 5px 5px;
                            	-o-border-radius: 0 0 5px 5px;
                            	-ms-border-radius: 0 0 5px 5px;
                            	border-radius: 0 0 5px 5px;
                            	border-top: 1px solid #CFD5D9;
                            	padding: 15px 0;">
                              <a id="jump-a" style="
                              	background: url(images/8bcLQqF.png) 0 -112px no-repeat;
                              	color: #7E7E7E;
                              	font-size: 17px;
                              	padding: 2px 0 2px 40px;
                              	text-decoration: none;
                              	-webkit-transition: all 0.3s ease;
                              	-moz-transition: all 0.3s ease;
                              	-ms-transition: all 0.3s ease;
                              	-o-transition: all 0.3s ease;
                              	transition: all 0.3s ease;
                              " href="index.jsp">已有账户，去登录</a>

                            </div>
                          </form>
                        <%
            String s=(String)request.getAttribute("registerfail");
            if(s==null) s="";
            else {out.print("<tr><p style=\"color:red\">"+s+"</p></tr>");}
          %>
                        </section>
                      </div>
                    </body>
                  </html>
