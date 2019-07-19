package Servlet;

import Dao.DateDao;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/DateServlet")
public class DateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String date;
        date=request.getParameter("time");
        DateDao dateDao=new DateDao();
        int zs=0;
        zs = dateDao.Setcus(date);
            HttpSession session1=request.getSession();
            session1.setAttribute("zs",zs);
            request.getRequestDispatcher("我的.jsp").forward(request,response);
    }
}
