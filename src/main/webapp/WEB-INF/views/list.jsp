<!--Header Block-->
<%@include file="includes/header.jsp" %>

<!--Menu Block-->
<%@include file="includes/menu.jsp" %>

<!--Contact(s) Page-->
<h2><spring:message code="label.contacts" /></h2>

<table class="data" BORDER="1" WIDTH="100%" CELLPADDING="10" CELLSPACING="0">
    <tr>
        <th><a class="black<c:if test="${sort eq 'fio'}">-active</c:if>" <c:if test="${sort ne 'fio'}">href="?sort=fio"</c:if> title="<spring:message code="label.sort" />"><spring:message code="label.fio" /></a></th>
        <th><a class="black<c:if test="${sort eq 'email'}">-active</c:if>" <c:if test="${sort ne 'email'}">href="?sort=email"</c:if> title="<spring:message code="label.sort" />"><spring:message code="label.email" /></a></th>
        <th><a class="black<c:if test="${sort eq 'address'}">-active</c:if>" <c:if test="${sort ne 'address'}">href="?sort=address"</c:if> title="<spring:message code="label.sort" />"><spring:message code="label.address" /></a></th>
        <th><a class="black<c:if test="${sort eq 'telephone'}">-active</c:if>" <c:if test="${sort ne 'telephone'}">href="?sort=telephone"</c:if> title="<spring:message code="label.sort" />"><spring:message code="label.telephone" /></a></th>
        <th><a class="black<c:if test="${sort eq 'organization'}">-active</c:if>" <c:if test="${sort ne 'organization'}">href="?sort=organization"</c:if> title="<spring:message code="label.sort" />"><spring:message code="label.organization" /></a></th>
        <th><a class="black<c:if test="${sort eq 'position'}">-active</c:if>" <c:if test="${sort ne 'position'}">href="?sort=position"</c:if> title="<spring:message code="label.sort" />"><spring:message code="label.position" /></a></th>
        <th>&nbsp;</th>
    </tr>
    <c:if test="${!empty contactList}">
        <c:forEach items="${contactList}" var="contact">
            <tr>
                <td><nobr><a href="view/${contact.id}" title="<spring:message code="label.view" />">${contact.fio}</a></nobr></td>
                <td><a href="mailto:${contact.email}" title="<spring:message code="label.email" />">${contact.email}</a></td>
                <td>${contact.address}</td>
                <td><a href="skype:${contact.telephone}?call" title="Skype">${contact.telephone}</a></td>
                <td>${contact.organization}</td>
                <td>${contact.position}</td>
                <td>
                    <nobr>
                        <a class="security" href="view/${contact.id}"><spring:message code="label.view" /></a>
                        /
                        <a class="security" href="edit/${contact.id}"><spring:message code="label.edit" /></a>
                        /
                        <a class="security-contact" href="delete/${contact.id}"><spring:message code="label.delete" /></a>
                    </nobr>
                </td>
            </tr>
        </c:forEach>
    </c:if>
</table>

<!--Footer Block-->
<%@include file="includes/footer.jsp" %>