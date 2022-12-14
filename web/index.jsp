<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 2022-12-06
  Time: 오후 6:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style type="text/css">
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

        p {
            text-align: left;
            font-size: 15px;
            padding-left: 20px;
        }

        ul {
            font-size: 15px;
            list-style: decimal;
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
    <h3 align="center">쇼핑몰 회원관리 프로그램</h3>
    <p>
        쇼핑몰 회원정보와 회원매출정보 데이터베이스를 구축하고 회원관리 프로그램을 작성하는 프로그램이다.
    </p>
    <p>
        프로그램 작성 순서
    <ul>
        <li>회원정보 테이블을 생성한다.</li>
        <li>매출정보 테이블을 생성한다.</li>
        <li>회원정보, 매출정보 테이블에 제시된 문제지의 참조데이터를 추가 생성한다.</li>
        <li>회원정보 입력 화면프로그램을 작성한다.</li>
        <li>회원정보 조회 프로그램을 작성한다.</li>
        <li>회원매출정보 조회 프로그램을 작성한다.</li>
    </ul>
    </p>
</section>
<footer>HRDKOREA Copyright@2015 Allrights reserved.Human Resources Development Service od Korea</footer>
</body>
</html>