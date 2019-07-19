package Servlet;

import Dao.SaleRecordDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/UpdateTicketByCosServlet")
public class UpdateTicketByCosServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        int id= Integer.parseInt(request.getParameter("id"));
        int bNumber= Integer.parseInt(request.getParameter("bNumber"));
        int attId= Integer.parseInt(request.getParameter("attId"));
        SaleRecordDao saleRecordDao=new SaleRecordDao();
        int row=saleRecordDao.update(id,attId,bNumber);
        if(row!=0)
        {
            request.getRequestDispatcher("我的.jsp").forward(request,response);
        }
        else{
            request.getRequestDispatcher("UpdateSalerecord.jsp").forward(request,response);
        }

    }
}
