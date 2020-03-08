<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="theLocale" 
value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}"
scope="session" />

<fmt:setLocale value="${theLocale}" />

<fmt:setBundle basename="com.tag_webproject.i18n.resources.mylabels" />

<html>

<body>

<a href="i18n-messages.jsp?theLocale=en_US">English (US)</a>
 |
<a href="i18n-messages.jsp?theLocale=es_ES">Spanish (ES)</a>
 |
<a href="i18n-messages.jsp?theLocale=de_DE">German (DE)</a>
 |
<a href="i18n-messages.jsp?theLocale=fr_FR">French (FR)</a>
 |
<a href="i18n-messages.jsp?theLocale=nl_NL">Dutch (NL)</a>
 |
<a href="i18n-messages.jsp?theLocale=it_IT">Italian (IT)</a>
<hr>

<fmt:message key="label.greeting" /> <br/> <br/>

<fmt:message key="label.firstname" /> <i>John</i> <br/>

<fmt:message key="label.lastname" /> <i>Doe</i> <br/><br/>

<fmt:message key="label.welcome" /> <br/>

<hr>

Selected locale: ${theLocale}

</body>

</html>




