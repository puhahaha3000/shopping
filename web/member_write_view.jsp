
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>홈쇼핑 회원 등록</title>
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
            background: lightgray;
            height: 90%;
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
       function checkForm(){
           let form = document.member_write;
           if(form.cname.value == ""){
               alert("회원성명이 입력되지 않았습니다.")
               form.cname.focus();
               return false;
           }else if(form.cphone.value == ""){
               alert("전화번호가 입력되지 않았습니다.")
               form.cphone.focus();
               return false;
           }else if(form.cadress.value == ""){
               alert("회원주소가 입력되지 않았습니다.")
               form.cphone.focus();
               return false;
           }else if(form.cjoindate.value == ""){
               alert("가입일자가 입력되지 않았습니다.")
               form.cjoindate.focus();
               return false;
           }else if(form.cgrade.value == ""){
               alert("고객등급이 입력되지 않았습니다.")
               form.cgrade.focus();
               return false;
           }else if(form.ccity.value == ""){
               alert("도시코드가 입력되지 않았습니다.")
               form.ccity.focus();
               return false;
           }
           form.submit();
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
    <h3 align="center">홈쇼핑 회원 등록</h3>
    <form action="/member_insert.do" method="post" name="member_write">
        <table width="40%" border="solid black 1px">
            <tbody>
            <tr>
                <th>
                    회원번호(자동발생)
                </th>
                <td>
                    <%--자동으로 회원번호 가져오는거 어디서 가져와야할지 모르겠어요...--%>
                    <input type="text" size="15" onclick="handler()" name="cnum">${custno}
                </td>
            </tr>
            <tr>
                <th>
                    회원성명
                </th>
                <td>
                    <input type="text" size="15" name="cname">
                </td>
            </tr>
            <tr>
                <th>회원전화</th>
                <td>
                    <input type="text" size="15" name="cphone">
                </td>
            </tr>
            <tr>
                <th>회원주소</th>
                <td>
                    <input type="text" size="30" name="cadress">
                </td>
            </tr>
            <tr>
                <th>가입일자</th>
                <td>
                    <input type="text" size="15" name="cjoindate">
                </td>
            </tr>
            <tr>
                <th>고객등급[A:VIP,B:일반,C:직원]</th>
                <td>
                    <input type="text" size="15" name="cgrade">
                </td>
            </tr>
            <tr>
                <th>도시코드</th>
                <td>
                    <input type="text" size="15" name="ccity">
                </td>
            </tr>
            <tr align="center">
                <td colspan="2">
                    <input type="submit" value="등록" onclick="checkForm()">
                    &nbsp;&nbsp;
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