<!--Header Block-->
<%@include file="WEB-INF/views/includes/header.jsp" %>

<!--Menu Block-->
<%@include file="WEB-INF/views/includes/menu.jsp" %>

<!--Login Page-->
<h2><spring:message code="label.login" /></h2>
<font color="#eeeeee">( <b>admin/pass</b> OR <b>user1/1111</b> OR <b><del>user2/2222</del></b> )</font>

<c:if test="${not empty param.error}">
    <font color="red"> <spring:message code="label.loginerror" />
    : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message} </font>
</c:if>
<form method="POST" action="<c:url value="/j_spring_security_check" />">
    <table class="data-login" BORDER="0" WIDTH="350" CELLPADDING="3" CELLSPACING="0">
        <tr>
            <td align="right"><spring:message code="label.login" /></td>
            <td><input type="text" name="j_username" /></td>
        </tr>
        <tr>
            <td align="right"><spring:message code="label.password" /></td>
            <td><input type="password" name="j_password" /></td>
        </tr>
        <tr>
            <td align="right"><spring:message code="label.remember" /></td>
            <td><input type="checkbox" name="_spring_security_remember_me" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="<spring:message code="label.login" />" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" value="Reset" />
            </td>
        </tr>
    </table>
</form>

<!--Footer Block-->
<%@include file="WEB-INF/views/includes/footer.jsp" %>