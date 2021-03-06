<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Basic Struts 2 Application - Welcome</title>
</head>
<body>
<h1>Welcome To Struts 2!</h1>
<p><a href="<s:url action='hello'/>">Hello World!</a></p>

<s:url action="hello"  var="helloLink">
  <s:param name="userName">Bruce Phillips</s:param>
</s:url>
<p><a href="${helloLink}">Hello Bruce Phillips</a></p>

<p>Get your own personal hello by filling out and submitting this form.</p>

<s:form action="hello">
  <s:textfield name="userName" label="Your name" />	
   <s:submit value="Submit" />
</s:form>

<p><a href="register.jsp">Please register</a> for our prize drawing.(directly)</p>

<s:url action="registerInput" var="registerInputLink" />
<p><a href="${registerInputLink}">Please register</a> for our prize drawing.(through action)</p>

<p><a href="<s:url action="index" namespace="config-browser" />">Launch the configuration browser.浏览配置</a></p>
<hr />
<s:text name="contact" />
</body>
</html>