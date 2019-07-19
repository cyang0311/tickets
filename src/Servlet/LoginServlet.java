package Servlet;

import Dao.CustomerDao;
import Dao.EmployerDao;
import JiaMi.Md5;
import entity.Customer;
import entity.Employer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        int a;
        String flag=request.getParameter("flag");
        if(flag.equals("1")){
            String EmployerId=request.getParameter("EmployerId");
            // 加密密码
            String P=request.getParameter("Pwd");
            String Pwd= null;
            try {
                Pwd = Md5.EncoderByMd5(P);
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
            EmployerDao employerDao=new EmployerDao();
            Employer employer=new Employer();
            try {
                employer.setEmployerId(EmployerId);
                employer.setPwd(Pwd);
            } catch (NumberFormatException e) {
                e.printStackTrace();
            } finally {

                Employer ad= employerDao.login(employer);
                if(ad!=null){
                    a=1;
                    HttpSession session1=request.getSession();
                    session1.setAttribute("flag",a);
                    HttpSession session=request.getSession();
                    session.setAttribute("yhxinxi1",ad);
                    request.getRequestDispatcher("我的.jsp").forward(request,response);
                }
                else{
                    out.print("<script language='javascript'>alert('账号或密码错误');window.location.href='管理员登录.jsp';</script>");
                }
            }
        }
        else {

            String cusPhone=request.getParameter("cusPhone");
            String P=request.getParameter("cusPwd");
            //加密密码
            String cusPwd= null;
            try {
                cusPwd = Md5.EncoderByMd5(P);
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
            CustomerDao customerDao=new CustomerDao();
            Customer customer=new Customer();
            try {
                customer.setCusPhone(cusPhone);
                customer.setCusPwd(cusPwd);
            } catch (NumberFormatException e) {
                e.printStackTrace();
            } finally {

                Customer ad= customerDao.login(customer);
                if(ad!=null){
                    a=2;
                    HttpSession session1=request.getSession();
                    session1.setAttribute("flag",a);
                    HttpSession session=request.getSession();
                    session.setAttribute("yhxinxi2",ad);
                    request.getRequestDispatcher("我的.jsp").forward(request,response);
                }
                else{
                    out.print("<script language='javascript'>alert('账号或密码错误');window.location.href='游客登录.jsp';</script>");
                }
            }

        }



    }
}
