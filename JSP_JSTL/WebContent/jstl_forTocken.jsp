<%@page import="java.util.StringTokenizer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String source = "a,b,c,d,e,f,g";

	String[] split = source.split(",");
	if(split != null) for(String str : split){
		out.println(str + "<br>");
	}
	
	StringTokenizer tockens = new StringTokenizer(source, ",");
	while(tockens.hasMoreTokens()){
		out.println(tockens.nextToken() + "<br>");
	}
%>

<hr>

<c:set var="source" value="a,b,c,d,e,f,g" />
<c:set var="split" value="${source.split(',') }" />
<c:forEach items="${split }" var="str">
	${str }<br>
</c:forEach>

<hr>
StringTockeniser : JSTL<br>
<c:forTokens var="str" items="a,b,c,d,e,f,g" delims=",">
	${str }<br>
</c:forTokens>