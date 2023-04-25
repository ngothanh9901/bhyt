package com.example.bhxh.controller;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        String firstName = request.getParameter("fn");
        String lastName = request.getParameter("ln");
        response.getWriter().append("Full Name: " + firstName + " " + lastName);
    }

    public void destroy() {
    }
}