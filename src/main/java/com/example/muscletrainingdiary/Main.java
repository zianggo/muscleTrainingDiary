package com.example.muscletrainingdiary;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;

@WebServlet(name = "Main", value = "/main")
public class Main extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LocalDate today = LocalDate.now();
        int[] monthDays = new int[42];

        for(int i=0; i<monthDays.length; i++)
            monthDays[i] = today.minusDays(today.getDayOfWeek().getValue() + (-1 * i)).getDayOfMonth();

        req.setAttribute("monthData", monthDays);

        RequestDispatcher dispatcher = req.getRequestDispatcher("main.jsp");
        dispatcher.forward(req, resp);
    }
}
