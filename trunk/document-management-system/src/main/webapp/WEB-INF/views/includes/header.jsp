<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="t" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<html>
<body>
<table border="0" style="width:100%;color:#FFFFFF;">
	<tr>
		<td><s:url value="/assets/images/dms-logo.png" var="dmslogo" /> <img
			src="${dmslogo}" alt="DOCUMENT MANAGEMENT SYSTEM" width="300"
			height="100" /></td>
		<td>&nbsp;</td>
		<td><s:url value="/j_spring_security_logout" var="logoutUrl" />
		<a href="${logoutUrl}" style="color:#FFFFFF;">Logout</a></td>
	</tr>

</table>
</body>
</html>