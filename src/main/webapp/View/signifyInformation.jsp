<%-- 
    Document   : signifyInformation
    Created on : Oct 2, 2019, 10:15:56 AM
    Author     : quangkhanh
--%>

<%@page import="modul.Student"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style>
        table {
            width: 80%;
            margin-left: 10%;
        }

        table,
        th,
        td {
            border: solid black 1px;
            border-collapse: collapse;
        }

        th,
        td {
            padding: 15px;
            text-align: left;
        }

        th {
            font-size: 14px;
            color: blue;
        }

        td {
            font-size: 12px;
            color: black;
        }
    </style>
</head>

<body>
    <h1>Hello World!</h1>
    <table>
        <tr>
            <th>student_id</th>
            <th>first name</th>
            <th>last name</th>
            <th>address</th>
        </tr>
        <%
            ArrayList<Student> students = (ArrayList<Student>) request.getAttribute("students");
            for (int i = 0; i < students.size(); ++i) {
                Student current = students.get(i); 
        %>
        <tr>
            <td><%= current.getStudentId() %> </td>
            <td><%= current.getFirstName() %></td>
            <td><%= current.getLastName() %></td>
            <td><%= current.getAddress()%></td>
        </tr>
        <% } %>
    </table>

    <table>
        <tr>
            <%
                Integer studentCount = (Integer) request.getAttribute("studentCount");
                Integer currentPage = (Integer) request.getAttribute("currentPage");
                Integer studentPerPage = (Integer) request.getAttribute("studentPerPage");
                Integer numberOfPages = (Integer) request.getAttribute("numberOfPages");
            %>
            <c:if test="${ currentPage != 1 }">
                <td>
                    <a href="MyServlet?page=1">
                        First page
                    </a>
                </td>
            </c:if>
            <c:forEach begin="1" end="${ numberOfPages }" var="i">
                <c:choose>
                    <c:when test="${ currentPage == i }">
                        <td>${ i }</td>
                    </c:when>
                    <c:otherwise>
                        <td>
                            <a href="MyServlet?page=${ i }">
                                ${ i }
                            </a>
                        </td>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
            <c:if test="${ currentPage != numberOfPages }">
                <td>
                    <a href="MyServlet?page=${ numberOfPages }">
                        Last page
                    </a>
                </td>
            </c:if>
        </tr>
    </table>
</body>

</html>