<%--
  Created by IntelliJ IDEA.
  User: KIMHYOJUN
  Date: 2022-12-09
  Time: 오후 1:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: KIMHYOJUN
  Date: 2022-12-09
  Time: 오전 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>홈쇼핑 회원 정보 수정</title>
    <style type="text/css">
        table {
            font-size: 15px;
            margin-left: 30%;
            border-collapse: collapse;

        }

        th {
            padding-left: 10px;
            padding-right: 10px;
        }

        td {
            padding: 2px;
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
    <script>
        function checkUpdate(){
            alert("회원정보가 수정되었습니다.")
        }
    </script>
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
    <h3 align="center">홈쇼핑 회원 정보 수정</h3>
    <form action="member_update.do" method="post">
        <table width="40%" border="solid black 1px">
            <tbody>
            <tr>
                <th>
                    회원번호(자동발생)
                </th>
                <td>
                    <input type="text" size="15" value="${member.customerNo}">
                </td>
            </tr>
            <tr>
                <th>
                    회원성명
                </th>
                <td>
                    <input type="text" size="15" value="${member.customerName}">
                </td>
            </tr>
            <tr>
                <th>회원전화</th>
                <td>
                    <input type="text" size="15" value="${member.phone}">
                </td>
            </tr>
            <tr>
                <th>회원주소</th>
                <td>
                    <input type="text" size="30" value="${member.address}">
                </td>
            </tr>
            <tr>
                <th>가입일자</th>
                <td>
                    <input type="text" size="15" value="${member.joinDate}">
                </td>
            </tr>
            <tr>
                <th>고객등급[A:VIP,B:일반,C:직원]</th>
                <td>
                    <input type="text" size="15" value="${member.grade}">
                </td>
            </tr>
            <tr>
                <th>도시코드</th>
                <td>
                    <input type="text" size="15" value="${member.city}">
                </td>
            </tr>

            <tr align="center">
                <td colspan="2">
                    <input type="submit" value="수정" onclick="checkUpdate()">
                    <a href="member_list.do"> <input type="button" value="조회"></a>
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</section>
<footer>HRDKOREA Copyright@2015 Allrights reserved.Human Resources Development Service od Korea</footer>
</body>
</html>