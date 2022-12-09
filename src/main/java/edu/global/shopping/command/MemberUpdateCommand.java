package edu.global.shopping.command;

import edu.global.shopping.dao.MemberDao;
import edu.global.shopping.dto.MemberDto;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberUpdateCommand implements Command {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        MemberDao memberDao = new MemberDao();
        MemberDto memberDto = memberDao.getOne(request.getParameter("custno"));
        request.setAttribute("member", memberDto);
        memberDao.update(request, response);
    }
}
