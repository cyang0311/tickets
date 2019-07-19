package Servlet;

import Dao.CustomerDao;
import Dao.DiscussDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/DiscussServlet")
public class DiscussServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        PrintWriter out=response.getWriter();
        response.setContentType("text/html;charset=utf-8");
        //如果提交为空，那么弹窗
        if(request.getParameter("cusPhone").equals("")||request.getParameter("dContent").equals("")||request.getParameter("attId")==null){
            out.print("<script>alert('评论失败'); window.location='评论.jsp' </script>");
        }
        else{
            String cusPhone=request.getParameter("cusPhone") ;
            int attId=Integer.parseInt(request.getParameter("attId")) ;
            String dContent=request.getParameter("dContent");
            if(cusPhone.equals("")||dContent.equals("")||cusPhone==null||dContent==null){
                out.print("<script>alert('评论失败'); window.location='评论.jsp' </script>");
            }
            DiscussDao discussDao=new DiscussDao();
            int row=discussDao.newdiscuss(cusPhone,attId,dContent);
            if(row!=0){
                request.getRequestDispatcher("评论.jsp").forward(request,response);
            }else {
                out.print("<script>alert('评论失败'); window.location='评论.jsp' </script>");
            }
        }

    }
}
