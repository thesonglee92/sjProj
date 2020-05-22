<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>bikeinfo</title>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th>No</th>
                <th>Name</th>
                <th>Addr</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${bikeList}" var="bike">
                <tr>
                    <td>${bikeinfo.no}</td>
                    <td>${bikeinfo.name}</td>
                    <td>${bikeinfo.addr}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
 
 
</body>
</html>