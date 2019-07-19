package Servlet;

import Check.CheckPhoneNumber;
import Dao.CustomerDao;
import JiaMi.Md5;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;

@WebServlet("/SetcusServlet")
public class SetcusServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        PrintWriter out=response.getWriter();
        response.setContentType("text/html;charset=utf-8");
        String cusPhone=request.getParameter("cusPhone");
        String cp=request.getParameter("cusPwd");
        String recusPwd=request.getParameter("recusPwd");//为了判断两次输入的密码相同
        if(request.getParameter("cusName").equals("")){
            out.print("<script>alert('姓名不能为空'); window.location='注册.jsp' </script>");
        }

        else if(cusPhone.equals("")){
            out.print("<script>alert('手机号不能为空'); window.location='注册.jsp' </script>");
        }
        //验证手机号的真实性
        else if(!CheckPhoneNumber.checkCellphone(cusPhone)){
            out.print("<script>alert('该手机号不存在'); window.location='注册.jsp' </script>");
        }
        else if(cp.length()<6){
            out.print("<script>alert('密码位数小于6位'); window.location='注册.jsp' </script>");
        }
        else if(!cp.equals(recusPwd)){
            out.print("<script>alert('两次输入的密码不相同'); window.location='注册.jsp' </script>");
        }
        else{
            String cusName=request.getParameter("cusName");

//        使用md5方式加密用户密码，用cusPwd接收加密后的密码存放进数据库
            Md5 md5=new Md5();
            String cusPwd= null;
            try {
                cusPwd = md5.EncoderByMd5(cp);
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
            CustomerDao customerDao=new CustomerDao();
            int row=customerDao.Setcus(cusPhone,cusName,cusPwd);
            if(row!=0){
                request.getRequestDispatcher("购票.jsp").forward(request,response);
            }else {
                out.print("<script>alert('注册失败'); window.location='注册.jsp' </script>");
            }
        }
    }
}
