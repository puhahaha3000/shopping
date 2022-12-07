package edu.global.shopping.command;

public enum CommandList {
    MEMBER_INSERT("/member_insert.do", new MemberInsertCommand(), "member_write_view.jsp"),
    MEMBER_LIST("/member_list.do", new MemberListCommand(), "member_list.jsp"),
    MEMBER_SALE("/member_sail.do", new MemberSailCommand(), "member_sail.jsp"),
    MEMBER_DETAIL("/member_detail.do", new MemberDetailCommand(), "member_detail.jsp"),
    MEMBER_UPDATE("/member_update.do", new MemberUpdateCommand(), "member_detail.jsp");

    private final String com;
    private final Command command;
    private final String viewPage;

    CommandList(String com, Command command, String viewPage) {
        this.com = com;
        this.command = command;
        this.viewPage = viewPage;
    }

    public String getCom() {
        return com;
    }

    public Command getCommand() {
        return command;
    }

    public String getViewPage() {
        return viewPage;
    }
}
