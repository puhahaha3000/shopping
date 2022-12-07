package edu.global.shopping.command;

import edu.global.shopping.dao.MemberDao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberUpdateCommand implements Command {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) {
        MemberDao memberDao = new MemberDao();
        memberDao.update(request, response);
    }
}
