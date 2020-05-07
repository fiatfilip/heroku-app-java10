package ro.siit.servlet;

import ro.siit.model.Event;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = {"/calendar"})
public class CalendarServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Event> events = new ArrayList<>();
        events.add(new Event("1", "Curs Java", "2020-05-07"));
        events.add(new Event("2", "RCA TM01XXL", "2020-06-07"));
        events.add(new Event("3", "Ziua lu\\' Filip", "2020-05-28"));
        req.setAttribute("events", events);
        req.getRequestDispatcher("/jsps/calendar.jsp").forward(req, resp);
    }
}
