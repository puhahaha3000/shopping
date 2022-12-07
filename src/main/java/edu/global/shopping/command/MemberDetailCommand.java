package edu.global.shopping.command;

import edu.global.shopping.dao.MemberDao;
import edu.global.shopping.dto.MemberDto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberDetailCommand implements Command {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        MemberDao memberDao = new MemberDao();
        MemberDto memberDto = memberDao.getOne(request.getParameter("CUSTNO"));
        request.setAttribute("member", memberDto);
    }
}
