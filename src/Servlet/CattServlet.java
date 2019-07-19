package Servlet;

import Dao.AttDao;
import entity.Att;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/CattServlet")
public class CattServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int row;
        int attid=Integer.parseInt(request.getParameter("attid"));
        int tkprice=Integer.parseInt(request.getParameter("tkprice"));
        String state=request.getParameter("state");
        AttDao attDao=new AttDao();
        row=attDao.Catt(attid,tkprice,state);
        if(row!=0){
            request.getRequestDispatcher("我的.jsp").forward(request,response);
        }else {
            request.getRequestDispatcher("修改.jsp").forward(request,response);
        }
    }
}
