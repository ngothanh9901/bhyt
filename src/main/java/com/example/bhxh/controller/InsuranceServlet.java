package com.example.bhxh.controller;

import com.example.bhxh.model.User;
import com.example.bhxh.payload.UpdatePayload;
import com.example.bhxh.service.InsuranceService;
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

@WebServlet(name = "insurance", value = "/insurance")
public class InsuranceServlet extends HttpServlet {
    private InsuranceService service = new InsuranceService();
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        HttpSession session = request.getSession( );
        User user = (User) session.getAttribute("user");

        try {
            double pre = service.caculation(user.getDomestic());

            long resul = (long) (user.getSalary() * pre);

            request.setAttribute("result",resul );
            request.setAttribute("precent",pre);


            RequestDispatcher rd =
                    request.getRequestDispatcher("insurance.jsp");
            rd.forward(request,response);
        } catch (SQLException | ServletException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }


    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");


    }


    public void destroy() {
    }
}
