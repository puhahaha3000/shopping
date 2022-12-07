package edu.global.shopping.command;

import edu.global.shopping.dao.MemberDao;
import edu.global.shopping.dto.MemberDto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class MemberListCommand implements Command {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        MemberDao memberDao = new MemberDao();
        ArrayList<MemberDto> memberDtoArrayList = memberDao.getList();
        request.setAttribute("list", memberDtoArrayList);
    }
}
