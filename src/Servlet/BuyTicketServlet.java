package Servlet;

import Dao.AttDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Administrator on 2018/6/11.
 */
@WebServlet("/BuyTicketServlet")
public class BuyTicketServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        HttpSession session=request.getSession();
        if(session.getAttribute("flag")!=null&&!request.getParameter("cusPhone").equals("未登录")){
            if(request.getParameter("bNumber").equals("")){
                out.print("<script language='javascript'>alert('票数不能为空');window.location.href='购票.jsp';</script>");
            }
            int attId=Integer.parseInt(request.getParameter("attId"));
            String cusPhone=request.getParameter("cusPhone");
            int bNumber=Integer.parseInt(request.getParameter("bNumber"));
            String btime=request.getParameter("btime");
            AttDao attDao=new AttDao();
            int row=attDao.buyTicket(attId,cusPhone,bNumber,btime);
            if(row!=0){
                request.getRequestDispatcher("我的.jsp").forward(request,response);
            }else {
                request.getRequestDispatcher("购票.jsp").forward(request,response);
            }
        }
        else
        {
                out.print("<script language='javascript'>alert('您还未登陆，请先登录再买票');window.location.href='游客登录.jsp';</script>");
        }

    }
}
