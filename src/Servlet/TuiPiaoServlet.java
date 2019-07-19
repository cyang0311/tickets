package Servlet;

import Dao.SaleRecordDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/TuiPiaoServlet")
public class TuiPiaoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        int id = Integer.parseInt(request.getParameter("id"));
        SaleRecordDao saleRecordDao = new SaleRecordDao();
        int row = saleRecordDao.tuiPiao(id);
        PrintWriter out = response.getWriter();
        if (row != 0) {
            out.print("<script language='javascript'>alert('修改成功');window.location.href='我的.jsp';</script>");
        } else {
            out.print("<script language='javascript'>alert('修改失败');window.location.href='我的.jsp';</script>");
        }

    }
}
