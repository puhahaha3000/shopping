package edu.global.shopping.command;

import edu.global.shopping.dao.MemberSailDao;
import edu.global.shopping.dto.MemberSaleDto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class MemberSailCommand implements Command {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        MemberSailDao memberSailDao = new MemberSailDao();
        ArrayList<MemberSaleDto> memberSaleDtoArrayList = memberSailDao.getList();
        request.setAttribute("list", memberSaleDtoArrayList);
    }
}
