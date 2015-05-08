<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <title><spring:message code="label.title" /> &raquo; <c:if test="${!empty pagename}"><spring:message code="label.${pagename}" /></c:if><c:if test="${empty pagename}"><spring:message code="label.login" /></c:if></title>

    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .security-contact {
        <c:choose>
            <c:when test="${ActiveUser eq 'admin'}">color: red;</c:when>
            <c:otherwise>color: #E0E0E0;</c:otherwise>
        </c:choose>
        }
        .security-new {
        <c:choose>
            <c:when test="${ActiveUser eq 'admin'}">color: #00BB00;</c:when>
            <c:when test="${ActiveUser eq 'user1'}">color: #00BB00;</c:when>
            <c:when test="${ActiveUser eq 'user2'}">color: #00BB00;</c:when>
            <c:otherwise>color: #E0E0E0;</c:otherwise>
        </c:choose>
        }
    </style>
</head>

<body>
    <center>