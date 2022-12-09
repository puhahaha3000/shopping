package edu.global.common;

public class Constant {
    public static final String CONNECT_POOL = "java:comp/env/jdbc/oracle/shopping";
    public static final String QUERY_INSERT_MEMBER = "INSERT INTO MEMBER_TBL_02\n" +
            "VALUES(MEMBER_TBL_02_SEQ.nextval, ?, ?, ?, ?, ?, ?)\n";
    public static final String QUERY_MEMBER_LIST = "SELECT CUSTNO, CUSTNAME, PHONE, ADDRESS, JOINDATE,\n" +
            "       CASE GRADE\n" +
            "           WHEN 'A' THEN 'VIP'\n" +
            "           WHEN 'B' THEN '일반'\n" +
            "           WHEN 'C' THEN '직원'\n" +
            "       END AS GRADE,\n" +
            "       CITY\n" +
            "FROM MEMBER_TBL_02\n";
    public static final String QUERY_MEMBER_SAIL = "SELECT M.CUSTNO AS CUSTNO, CUSTNAME,\n" +
            "    CASE GRADE\n" +
            "        WHEN 'A' THEN 'VIP'\n" +
            "        WHEN 'B' THEN '일반'\n" +
            "        WHEN 'C' THEN '직원'\n" +
            "    END AS GRADE,\n" +
            "    PRICE\n" +
            "FROM MEMBER_TBL_02 M, (\n" +
            "    SELECT CUSTNO, SUM(PRICE) AS PRICE\n" +
            "    FROM MONEY_TBL_02\n" +
            "    GROUP BY CUSTNO\n" +
            ") S\n" +
            "WHERE M.CUSTNO = S.CUSTNO\n" +
            "ORDER BY PRICE DESC";
    public static final String QUERY_UPDATE_MEMBER = "UPDATE MEMBER_TBL_02\n" +
            "SET CUSTNAME = ?,\n" +
            "    PHONE = ?,\n" +
            "    ADDRESS = ?,\n" +
            "    JOINDATE = ?,\n" +
            "    GRADE = ?,\n" +
            "    CITY = ?\n" +
            "WHERE CUSTNO = ?";
    public static final String QUERY_SELECT_ONE_MEMBER = "SELECT * FROM MEMBER_TBL_02 WHERE CUSTNO = ?";
}
