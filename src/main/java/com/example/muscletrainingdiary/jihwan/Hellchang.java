package com.example.muscletrainingdiary.jihwan;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

@WebServlet(name = "hellchang", value = "/hellchang")
public class Hellchang extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int[] days = new int[42];
        LocalDate today = LocalDate.now();

        int month = LocalDate.now().getMonthValue();
        int year = LocalDate.now().getYear();

        LocalDate firstMonthDay = LocalDate.of(year, month,1);
        int weekInt = firstMonthDay.getDayOfWeek().getValue();
        LocalDate beforeMonthLastDay = firstMonthDay.minusDays(weekInt);
        for(int i = 0; i < days.length; i++) {
            days[i] = beforeMonthLastDay.plusDays(i).getDayOfMonth();
        }
        
        PrintWriter out = resp.getWriter();
        out.println("<html><body>");

        for(int i : days)
            out.println( "<p>" + i + "</p>");

        out.println("<hr>");

        for(int i = 0; i < days.length; i++)
            out.println( "<p>" + days[i] + "</p>");

        out.println("</body></html>");
    }
}
