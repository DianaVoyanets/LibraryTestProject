<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<li>
    <a href="${contextPath}/publishers"><spring:message code="publisher.action.show.all"/></a>
</li>
<sec:authorize access="hasAnyRole('ROLE_LIBRARIAN', 'ROLE_ADMIN')">
    <li>
        <a href="${contextPath}/publishers?page=add"><spring:message code="publisher.action.add"/></a>
    </li>
</sec:authorize>