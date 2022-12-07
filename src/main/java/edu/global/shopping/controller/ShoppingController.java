package edu.global.shopping.controller;

import edu.global.shopping.command.CommandList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "*.do")
public class ShoppingController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        actionDo(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        actionDo(request, response);
    }

    private void actionDo(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");

        String uri = request.getRequestURI();
        String conPath = request.getContextPath();
        String com = uri.substring(conPath.length());

        CommandList command = null;
        for (CommandList item : CommandList.values()) {
            if (item.getCom().equals(com)) {
                command = item;
                break;
            }
        }
        if (command != null) {
            command.getCommand().execute(request, response);
            RequestDispatcher dispatcher = request.getRequestDispatcher(command.getViewPage());
            dispatcher.forward(request, response);
        }
    }
}
