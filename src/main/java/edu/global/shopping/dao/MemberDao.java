package edu.global.shopping.dao;

import edu.global.common.Constant;
import edu.global.shopping.dto.MemberDto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDao implements ConvertableFromResultSet<MemberDto> {

    public MemberDto getOne(String customerNo) {
        String query = Constant.QUERY_SELECT_ONE_MEMBER;
        String[] params = { customerNo };
        return CommonDao.getOneDto(query, params, this);
    }

    public ArrayList<MemberDto> getList() {
        String query = Constant.QUERY_MEMBER_LIST;
        return CommonDao.getArrayListFromQuery(query, this);
    }

    public void update(HttpServletRequest request, HttpServletResponse response) {
        String[] params = {
                request.getParameter("CUSTNAME"),
                request.getParameter("PHONE"),
                request.getParameter("ADDRESS"),
                request.getParameter("JOINDATE"),
                request.getParameter("GRADE"),
                request.getParameter("CITY"),
                request.getParameter("CUSTNO")
        };
        String query = Constant.QUERY_UPDATE_MEMBER;
        CommonDao.execute(query, params);
    }

    public void insert(HttpServletRequest request, HttpServletResponse response) {
        String[] params = {
                request.getParameter("CUSTNO"),
                request.getParameter("CUSTNAME"),
                request.getParameter("PHONE"),
                request.getParameter("ADDRESS"),
                request.getParameter("JOINDATE"),
                request.getParameter("GRADE"),
                request.getParameter("CITY")
        };
        String query = Constant.QUERY_INSERT_MEMBER;
        CommonDao.execute(query, params);
    }

    @Override
    public MemberDto convertToOneRecord(ResultSet resultSet) {
        MemberDto memberDto;
        try {
            memberDto = new MemberDto(
                    resultSet.getInt("CUSTNO"),
                    resultSet.getString("CUSTNAME"),
                    resultSet.getString("PHONE"),
                    resultSet.getString("ADDRESS"),
                    resultSet.getTimestamp("JOINDATE"),
                    resultSet.getString("GRADE"),
                    resultSet.getString("CITY")
            );
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return memberDto;
    }
}
