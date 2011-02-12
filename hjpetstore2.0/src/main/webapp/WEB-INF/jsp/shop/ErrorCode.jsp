<%@ page isErrorPage="true" contentType="text/html;charset=UTF-8" %>
<%@page pageEncoding="UTF-8"%>

<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"    uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <head>
        <title>Hibernate Spring JPetStore</title>
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type" />
        <META HTTP-EQUIV="Cache-Control" CONTENT="max-age=0">
        <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
        <meta http-equiv="expires" content="0">
        <META HTTP-EQUIV="Expires" CONTENT="Tue, 01 Jan 1980 1:00:00 GMT">
        <META HTTP-EQUIV="Pragma" CONTENT="no-cache">
    </head>

    <body bgcolor="white">

        <table bgcolor="black" border="0" cellspacing="0" cellpadding="5" width="100%">
            <tbody>
                <tr>
                    <td>
                        <a href="<c:url value="/shop/index.html"/>"><img border="0" src="../images/logo-topbar.gif" /></a>
                    </td>
                    <td align="right">
                        <a href="<c:url value="/shop/viewCart.html"/>"><img border="0" name="img_cart" src="../images/cart.gif" /></a>
                        <font color="white">|</font>
                        <c:if test="${empty userSession.user}" >
                            <a href="<c:url value="/shop/signonForm.html"/>"><font color="white">Login</font></a>
                        </c:if>

                        <c:if test="${!empty userSession.user}" >
                            <a href="<c:url value="/shop/signoff.html"/>"><font color="white">Logout</font></a>
                            <font color="white">|</font>
                            <a href="<c:url value="/shop/editUser.html"/>"><font color="white">My Account</font></a>
                            <!-- my order -->
                            <font color="white">|</font>
                            <a href="<c:url value="/shop/listOrders.html"/>"><font color="white">My Orders</font></a>

                        </c:if>
                        <%-- the extension is htm, not html, because we mapped *.hrml to Spring DispatcherServlet --%>
                        <font color="white">|</font>
                        <a href="../help.htm"><font color="white">Help</font></a>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <form action="<c:url value="/shop/searchProducts.html"/>" method="post">
                            <input name="keyword" size="20" type="text"/>
                            &nbsp;
                            <input name="search" value="search" type="submit"/>
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>

        <!-- this should be only for debug -->
        <table width="60%" align="center" border="0" cellpadding="3" cellspacing="1" bgcolor="#000000">
            <tr bgcolor="#99FF22">
                <td align="center">
                    Sorry, an error took place when access to <c:out value="${pageContext.errorData.requestURI}"/>, please try again later.
                </td>
            </tr>
            <tr bgcolor="#99FF22">
                <td align="center">
                    Error code <c:out value="${pageContext.errorData.statusCode}"/>
                </td>
            </tr>
            <tr bgcolor="#99FF22">
                <td align="center">
                    Exception: <center><b><c:out value="${pageContext.errorData.throwable}"/></b></center>
                </td>
            </tr>
            <tr bgcolor="#99FF22">
                <td align="center">
                    <a href="<c:url value="/shop/index.html"/>">Home</a>
                </td>
            </tr>
        </table>

        <!-- user friendly message for consumer -->
        <%--
        <table width="60%" align="center" border="0" cellpadding="3" cellspacing="1" bgcolor="#000000">
            <tr bgcolor="#99FF22">
                <td align="center" colspan="2">
                    Sorry, an error took place when access to <c:out value="${pageContext.errorData.requestURI}"/>, please try again later.
                </td>
            </tr>
            <tr bgcolor="#99FF22">
                <td align="center" colspan="2">
                    <a href="<c:url value="/shop/index.html"/>">Home</a>
                </td>
            </tr>
        </table>
        --%>

        <%@ include file="jspf/IncludeBottom.jspf" %>