<!--Header Block-->
<%@include file="includes/header.jsp" %>

<!--Menu Block-->
<%@include file="includes/menu.jsp" %>

<!--Search Page-->
<h2><spring:message code="label.search" /></h2>

<table class="data-search" BORDER="1" WIDTH="100%" CELLPADDING="10" CELLSPACING="0">
    <tr>
        <th colspan="6" align="center">
            <form:form method="get" action="search" commandName="contact">
                <table>
                    <tr>
                        <td>
                            <fieldset>
                                <legend><spring:message code="label.filter"/></legend>
                                <table>
                                    <tr>
                                        <td>
                                            <label for="filter-off"><font color="red">Off</font></label><input type="radio" name="filter-on" id="filter-off" value="0" <c:if test="${filter_on eq '0'}">checked</c:if> />
                                        </td>
                                        <td rowspan="2">
                                            <input type="checkbox" value="" name="filters" checked style="display:none;" />
                                            <label for="filter-fio"><spring:message code="label.fio"/></label><input type="checkbox" name="filters" id="filter-fio" value="fio" ${fio} /> &nbsp;
                                            <label for="filter-email"><spring:message code="label.email"/></label><input type="checkbox" name="filters" id="filter-email" value="email" ${email} /> &nbsp;
                                            <label for="filter-address"><spring:message code="label.address"/></label><input type="checkbox" name="filters" id="filter-address" value="address" ${address} /> &nbsp;
                                            <label for="filter-telephone"><spring:message code="label.telephone"/></label><input type="checkbox" name="filters" id="filter-telephone" value="telephone" ${telephone} /> &nbsp;
                                            <label for="filter-organization"><spring:message code="label.organization"/></label><input type="checkbox" name="filters" id="filter-organization" value="organization" ${organization} /> &nbsp;
                                            <label for="filter-position"><spring:message code="label.position"/></label><input type="checkbox" name="filters" id="filter-position" value="position" ${position} />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label for="filter-on"><font color="green">On</font></label><input type="radio" name="filter-on" id="filter-on" value="1" <c:if test="${filter_on eq '1'}">checked</c:if> /> &nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </fieldset>
                        </td>
                        <td width="0">&nbsp;&nbsp;&nbsp;</td>
                        <td>
                            <fieldset>
                                <legend><spring:message code="label.strsearch"/></legend>
                                <input type="text" value="${value}" size="70" name="value" id="value" class="search" />
                                <input type="submit" value="<spring:message code="label.search"/>" class="search" />
                            </fieldset>
                        </td>
                    </tr>
                </table>
            </form:form>
        </th>
    </tr>

    <c:if test="${!empty contactList}">
        <c:forEach items="${contactList}" var="contact">
            <tr>
                <td class="<c:if test="${filter_on eq '1'}">${fio}</c:if>"><a href="view/${contact.id}" title="<spring:message code="label.view" />">${contact.fio}</a></td>
                <td class="<c:if test="${filter_on eq '1'}">${email}</c:if>"><a href="mailto:${contact.email}" title="<spring:message code="label.email" />">${contact.email}</a></td>
                <td class="<c:if test="${filter_on eq '1'}">${address}</c:if>">${contact.address}</td>
                <td class="<c:if test="${filter_on eq '1'}">${telephone}</c:if>"><a href="skype:${contact.telephone}?call" title="Skype">${contact.telephone}</a></td>
                <td class="<c:if test="${filter_on eq '1'}">${organization}</c:if>">${contact.organization}</td>
                <td class="<c:if test="${filter_on eq '1'}">${position}</c:if>">${contact.position}</td>
            </tr>
        </c:forEach>
    </c:if>
</table>

<!--Footer Block-->
<%@include file="includes/footer.jsp" %>