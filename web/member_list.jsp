<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: KIMHYOJUN
  Date: 2022-12-09
  Time: 오전 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원목록 조회/수정</title>
    <style type="text/css">
        table {
            text-align: center;
            font-size: 15px;
            margin-left: 25%;
            border-collapse: collapse;
        }

        td {
            padding: 5px;
        }

        th {
            padding: 5px;
        }

        a:link {
            color: white;
            text-decoration: none;
        }

        a:visited {
            color: white;
            text-decoration: none;
        }

        html.body {
            margin: 0;
            padding: 0;
        }

        header {
            width: 100%;
            height: 90px;
            background: #3557D5;
            text-align: center;
            font-size: 25px;
            color: white;
            padding-top: 50px;
        }

        nav {
            width: 100%;
            height: 30px;
            background: #8F8CE7;
            color: white;
            font-size: 12px;
            padding-top: 10px;
        }

        section {
            width: 100%;
            height: 350px;
            background: lightgray;
            text-align: center;
            font-size: 20px;
            padding-top: 20px;
        }

        footer {
            width: 100%;
            height: 30px;
            background: #3665B5;
            text-align: center;
            color: white;
            font-size: 12px;
            padding-top: 10px;
        }
    </style>
</head>
<body>
<header>쇼핑몰 회원관리 ver 1.0</header>
<nav>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <a href="member_insert.do">회원등록</a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="member_list.do">회원목록조회/수정</a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="member_sail.do">회원매출조회</a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="index.jsp">홈으로</a>
</nav>
<section>
    <h3>회원목록 조회/수정</h3>
    <table width="50%" height="50" border="solid black 1px">
        <thead>
        <th>회원번호</th>
        <th>회원성명</th>
        <th>전화번호</th>
        <th>주소</th>
        <th>가입일자</th>
        <th>고객등급</th>
        <th>거주지역</th>
        </thead>
        <tbody>
        <c:forEach var="dto" items="${list}">
            <tr>
                <td><a href="member_update.do?custno=${dto.customerNo}">${dto.customerNo}</a></td>
                <td>${dto.customerName}</td>
                <td>${dto.phone}</td>
                <td>${dto.address}</td>
                <td>${dto.joinDate}</td>
                <td>${dto.grade}</td>
                <td>${dto.city}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</section>
<footer>HRDKOREA Copyright@2015 Allrights reserved.Human Resources Development Service od Korea</footer>
</body>
</html>