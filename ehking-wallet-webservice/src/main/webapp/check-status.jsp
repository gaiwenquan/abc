<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.nio.charset.*,java.lang.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="decorator" content="none">
<title>检测状态</title>
</head>
<body>
	<%
	        java.util.Enumeration names = request.getHeaderNames();
	        while (names.hasMoreElements()) {
	                String name = (String)names.nextElement();
	                out.println(name+": "+request.getHeader(name) + "<br>");
	        }
	%>
	<br />
	host: <%try{out.println(""+java.net.InetAddress.getLocalHost().getHostName());}catch(Exception e){}%>
	<br />
	remoteAddr: <%=request.getRemoteAddr()%>
	<br />
	remoteHost: <%=request.getRemoteHost()%>
	<br />
	sessionId: <%=request.getSession().getId()%>
	<br />
	serverName:<%=request.getServerName()%>
	<br />
	scheme:<%=request.getScheme()%>
	<br />
	<%request.getSession().setAttribute("t1","t2");%>
	<br/>
	Default Charset=<%= Charset.defaultCharset()%>
	<br/>
	file.encoding=<%= System.getProperty("file.encoding")%>
	<br/>
	Default Charset=<%= Charset.defaultCharset()%>
</body>
</html>