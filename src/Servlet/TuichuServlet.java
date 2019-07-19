package Servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Administrator on 2018/6/20.
 */
@WebServlet("/TuichuServlet")
public class TuichuServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        request.removeAttribute("zs");
        request.removeAttribute("flag");
        request.removeAttribute("yhxinxi1");
        request.removeAttribute("yhxinxi2");
        session.setAttribute("flag",null);
        session.setAttribute("zs",null);
        session.setAttribute("yhxinxi1",null);
        session.setAttribute("yhxinxi2",null);
//        if (session.getAttribute("flag")!=null)
//        request.removeAttribute("flag");
//        if (session.getAttribute("zs")!=null)
//            request.removeAttribute("zs");
//        if (session.getAttribute("yhxinxi2")!=null)
//            request.removeAttribute("yhxinxi2");
//        if (session.getAttribute("yhxinxi1")!=null)
//            request.removeAttribute("yhxinxi1");
//        session.invalidate();
        request.getRequestDispatcher("首页.jsp").forward(request,response);
    }
}
