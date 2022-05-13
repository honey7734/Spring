<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	int price = 100000000;
	//데시멀 포맷?
	//# 실수처리(있는 숫자만 출력) / 0 자리수 처리(없는자리에 0출력)
	String priceStr = new DecimalFormat("#,###").format(price);
	out.println("￦" + priceStr);
%>

<hr>

<c:set var="price" value="10000000000" />
￦<fmt:formatNumber value="${price }" pattern="#,###" />