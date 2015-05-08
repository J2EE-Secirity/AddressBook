<!--Header Block-->
<%@include file="includes/header.jsp" %>

<!--Menu Block-->
<%@include file="includes/menu.jsp" %>

<!--View Page-->
<h2><spring:message code="label.view" /></h2>

<form:form method="post" action="" commandName="contact">
<form:hidden path="id" />
<table class="data-form" BORDER="0" WIDTH="450" CELLPADDING="3" CELLSPACING="0">
    <tr>
        <td align="right"><spring:message code="label.fio" /></td>
        <td><form:input path="fio" class="disabled" /></td>
    </tr>
    <tr>
        <td align="right"><spring:message code="label.email" /></td>
        <td><form:input path="email" class="disabled" /></td>
    </tr>
    <tr>
        <td align="right" valign="top"><spring:message code="label.address" /></td>
        <td><form:textarea path="address" cols="28" rows="5" class="disabled"></form:textarea></td>
    </tr>
    <tr>
        <td align="right"><spring:message code="label.telephone" /></td>
        <td><form:input path="telephone" class="disabled" /></td>
    </tr>
    <tr>
        <td align="right"><spring:message code="label.organization" /></td>
        <td><form:input path="organization" class="disabled" /></td>
    </tr>
    <tr>
        <td align="right"><spring:message code="label.position" /></td>
        <td><form:input path="position" class="disabled" /></td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <hr />
            <input type="button" value="<spring:message code="label.contacts"/>" onclick="location.href='/AddressBook/list?sort='" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="button" value="<spring:message code="label.edit"/>" onclick="location.href='/AddressBook/edit/${contactId}'" />
        </td>
    </tr>
</table>
</form:form>

<!--Footer Block-->
<%@include file="includes/footer.jsp" %>