package edu.global.shopping.command;

public enum CommandList {
    EXAMPLE("/member_list.do", new ExampleCommand(), "member_list.jsp");

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
