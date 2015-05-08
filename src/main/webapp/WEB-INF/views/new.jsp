<!--Header Block-->
<%@include file="includes/header.jsp" %>

<!--Menu Block-->
<%@include file="includes/menu.jsp" %>

<!--Add Page-->
<h2><spring:message code="label.addcontact" /></h2>

<form:form method="post" action="add" commandName="contact">
<table class="data-form" BORDER="0" WIDTH="450" CELLPADDING="3" CELLSPACING="0">
    <tr>
        <td align="right"><form:label path="fio">
            <spring:message code="label.fio" />
        </form:label></td>
        <td><form:input path="fio" /></td>
    </tr>
    <tr>
        <td align="right"><form:label path="email">
            <spring:message code="label.email" />
        </form:label></td>
        <td><form:input path="email" /></td>
    </tr>
    <tr>
        <td align="right" valign="top">
            <form:label path="address">
                <spring:message code="label.address" />
            </form:label>
        </td>
        <td><form:textarea path="address" cols="28" rows="5"></form:textarea></td>
    </tr>
    <tr>
        <td align="right"><form:label path="telephone">
            <spring:message code="label.telephone" />
        </form:label></td>
        <td><form:input path="telephone" /></td>
    </tr>
    <tr>
        <td align="right"><form:label path="organization">
            <spring:message code="label.organization" />
        </form:label></td>
        <td><form:input path="organization" /></td>
    </tr>
    <tr>
        <td align="right"><form:label path="position">
            <spring:message code="label.position" />
        </form:label></td>
        <td>
            <form:select path="position">
                <form:option value=""></form:option>
                <c:forEach items="${positions}" var="position">
                    <form:option value="${position}">${position}</form:option>
                </c:forEach>
            </form:select>
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <hr />
            <input type="button" value="<spring:message code="label.contacts"/>" onclick="location.href='/AddressBook/list?sort='" />
            <input type="submit" value="<spring:message code="label.addcontact"/>" class="security-new" />
            <input type="reset" value="Reset" />
        </td>
    </tr>
</table>
</form:form>

<!--Footer Block-->
<%@include file="includes/footer.jsp" %>