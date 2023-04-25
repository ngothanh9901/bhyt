package com.example.bhxh.controller;

import com.example.bhxh.model.User;
import com.example.bhxh.service.AuthenService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "authen", value = "/login")
public class AuthenServlet extends HttpServlet {
    AuthenService authenService = new AuthenService();
    public void init() {
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = authenService.login(username, password);

        if(user != null){
            HttpSession session = request.getSession( );
            session.setAttribute("user",user);
            RequestDispatcher rd =
                    request.getRequestDispatcher("index.jsp");
            rd.forward(request,response);
        }else{
            request.setAttribute("error", "Username hoặc password không chính xác");
            RequestDispatcher rd =
                    request.getRequestDispatcher("login.jsp");
            rd.forward(request,response);
        }
    }
}
