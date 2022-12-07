package edu.global.shopping.dao;

import edu.global.common.Constant;
import edu.global.shopping.dto.MemberSaleDto;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberSailDao implements ConvertableFromResultSet<MemberSaleDto> {
    public ArrayList<MemberSaleDto> getList() {
        String query = Constant.QUERY_MEMBER_SAIL;
        return CommonDao.getArrayListFromQuery(query, this);
    }

    @Override
    public MemberSaleDto convertToOneRecord(ResultSet resultSet) {
        MemberSaleDto memberSaleDto;
        try {
            memberSaleDto = new MemberSaleDto(
                    resultSet.getInt("CUSTNO"),
                    resultSet.getString("CUSTNAME"),
                    resultSet.getString("GRADE"),
                    resultSet.getInt("PRICE")
            );
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return memberSaleDto;
    }
}
