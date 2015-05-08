<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>

<table WIDTH="100%" CELLSPACING="0" CELLPADDING="5" BORDER="0">
    <tr>
        <th width="180">
            <nobr>
            <c:choose>
                <c:when test="${pagename eq 'contacts'}"><font>[</font> <a class="menu-active"><spring:message code="label.title"/></a> <font>]</font></c:when>
                <c:when test="${pagename eq 'view'}"><font>[</font> <a class="menu-active"><spring:message code="label.title"/></a> <font>]</font></c:when>
                <c:when test="${pagename eq 'edit'}"><font>[</font> <a class="menu-active"><spring:message code="label.title"/></a> <font>]</font></c:when>
                <c:otherwise><font color="white">[</font> <a class="menu" href="/AddressBook/list?sort="><spring:message code="label.title"/></a> <font color="white">]</font></c:otherwise>
            </c:choose>
            </nobr>
        </th>
        <th width="160">
            <nobr>
                <c:choose>
                    <c:when test="${pagename eq 'addcontact'}"><font>[</font> <a class="menu-active"><spring:message code="label.addcontact"/></a> <font>]</font></c:when>
                    <c:otherwise><font color="white">[</font> <a class="menu" href="/AddressBook/new"><spring:message code="label.addcontact"/></a> <font color="white">]</font></c:otherwise>
                </c:choose>
            </nobr>
        </th>
        <th width="70">
            <nobr>
                <c:choose>
                    <c:when test="${pagename eq 'search'}"><font>[</font> <a class="menu-active"><spring:message code="label.search"/></a> <font>]</font></c:when>
                    <c:otherwise><font color="white">[</font> <a class="menu" href="/AddressBook/search?filter-on=0&filters=&value="><spring:message code="label.search"/></a> <font color="white">]</font></c:otherwise>
                </c:choose>
            </nobr>
        </th>
        <th width="70">
            <nobr>
            <c:choose>
                <c:when test="${pagename eq 'contacts'}"><font color="white">[</font> <a class="menu" href="/AddressBook/login.jsp"><spring:message code="label.login"/></a> <font color="white">]</font></c:when>
                <c:when test="${pagename eq 'view'}"><font color="white">[</font> <a class="menu" href="/AddressBook/login.jsp"><spring:message code="label.login"/></a> <font color="white">]</font></c:when>
                <c:when test="${pagename eq 'edit'}"><font color="white">[</font> <a class="menu" href="/AddressBook/login.jsp"><spring:message code="label.login"/></a> <font color="white">]</font></c:when>
                <c:when test="${pagename eq 'addcontact'}"><font color="white">[</font> <a class="menu" href="/AddressBook/login.jsp"><spring:message code="label.login"/></a> <font color="white">]</font></c:when>
                <c:when test="${pagename eq 'search'}"><font color="white">[</font> <a class="menu" href="/AddressBook/login.jsp"><spring:message code="label.login"/></a> <font color="white">]</font></c:when>
                <c:otherwise><font>[</font> <a class="menu-active"><spring:message code="label.login" /></a> <font>]</font></c:otherwise>
            </c:choose>
            </nobr>
        </th>

        <td width="0">&nbsp;</td>
        <td width="360" align="right">
            <c:if test="${!empty ActiveUser}">
                <c:choose>
                    <c:when test="${ActiveUser eq 'user1'}">Is currently logged <font color="blue"><b><c:out value='${ActiveUser}' /></b></font> <b>[</b> <a href="<c:url value="/logout" />"><spring:message code="label.logout" /></a> <b>]</b></c:when>
                    <c:when test="${ActiveUser eq 'user2'}">Is currently logged <font color="blue"><b><c:out value='${ActiveUser}' /></b></font> <b>[</b> <a href="<c:url value="/logout" />"><spring:message code="label.logout" /></a> <b>]</b></c:when>
                    <c:when test="${ActiveUser eq 'admin'}">Is currently logged <font color="blue"><b><c:out value='${ActiveUser}' /></b></font> <b>[</b> <a href="<c:url value="/logout" />"><spring:message code="label.logout" /></a> <b>]</b></c:when>
                    <c:otherwise>Is currently logged <font color="blue"><c:out value='${ActiveUser}' /></font></c:otherwise>
                </c:choose>
            </c:if>
            <c:if test="${empty ActiveUser}">
                <%
                    String ActiveUser = SecurityContextHolder.getContext().getAuthentication().getName();
                    if(ActiveUser.equals("user1") || ActiveUser.equals("user2") || ActiveUser.equals("admin")){
                        out.write( "Is currently logged <font color='blue'><b>" + SecurityContextHolder.getContext().getAuthentication().getName() + "</b></font> <b>[</b> <a href='logout'>" );
                        %><spring:message code="label.logout" /><%
                        out.write( "</a> <b>]</b>" );
                    }else{
                        out.write( "Is currently logged <font color='blue'>" + SecurityContextHolder.getContext().getAuthentication().getName() + "</font>" );
                    }
                %>
            </c:if>
        </td>
    </tr>
    <tr><td colspan="6"><hr/></td></tr>
</table>

