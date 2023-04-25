package com.example.bhxh.controller;

import com.example.bhxh.model.User;
import com.example.bhxh.payload.RegisterPayload;
import com.example.bhxh.payload.UpdatePayload;
import com.example.bhxh.service.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "update", value = "/update")
public class UpdateServlet  extends HttpServlet {
    private UserService userService = new UserService();
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        String fullname = request.getParameter("fullname");
        String birthDay = request.getParameter("birthDay");
        String password = request.getParameter("password");
        long salary = Long.parseLong(request.getParameter("salary"));
        HttpSession session = request.getSession( );
        User user = (User) session.getAttribute("user");



        UpdatePayload payload = new UpdatePayload(fullname,birthDay,password,salary);
        try {
            message = userService.updateUser(payload,user.getId());
            user.setFullname(fullname);
            user.setBirthday(birthDay);
            user.setPassword(password);
            user.setSalary(salary);

            session.setAttribute("user",user);

            request.setAttribute("message", message);
            RequestDispatcher rd =
                    request.getRequestDispatcher("register.jsp");
            rd.forward(request,response);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

//    @Override
//    protected void doPut(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        request.setCharacterEncoding("UTF-8");
//        response.setContentType("text/html");
//        String fullname = request.getParameter("fullname");
//        String birthDay = request.getParameter("birthDay");
//        String password = request.getParameter("password");
//        long salary = Long.parseLong(request.getParameter("salary"));
//        HttpSession session = request.getSession( );
//        User user = (User) session.getAttribute("user");
//
//
//
//        UpdatePayload payload = new UpdatePayload(fullname,birthDay,password,salary);
//        message = userService.updateUser(payload,user.getId());
//
//
//        request.setAttribute("message", message);
//        RequestDispatcher rd =
//                request.getRequestDispatcher("register.jsp");
//        rd.forward(request,response);
//    }

    public void destroy() {
    }
}
