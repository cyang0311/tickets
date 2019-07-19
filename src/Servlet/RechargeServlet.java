package Servlet;

import Dao.RechargeRecordDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/RechargeServlet")
public class RechargeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        String cusPhone=request.getParameter("cusPhone");
        int amount=Integer.parseInt(request.getParameter("Amount"));
        RechargeRecordDao rechargeRecordDao=new RechargeRecordDao();
        int row=rechargeRecordDao.recharge(cusPhone,amount);
        if(row!=0){
            out.print("<script>alert('充值成功'); window.location='我的.jsp' </script>");
        }
        else{
            out.print("<script>alert('充值失败'); window.location='我的.jsp' </script>");
        }
    }
}
