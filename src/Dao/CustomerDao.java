package Dao;

import entity.Customer;
import entity.Employer;

import java.sql.*;

public class CustomerDao extends SqlBean{
    public Customer login(Customer customer){
        String sql="SELECT * FROM Customer WHERE CusPhone=? and CusPwd=?";
        Connection conn = this.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,customer.getCusPhone());
            pstmt.setString(2,customer.getCusPwd());
            rs = pstmt.executeQuery();
            if (rs.next()) {// 封装对象
                Customer ad=new Customer();
                ad.setCusPhone(rs.getString("CusPhone"));
                ad.setCusName(rs.getString("CusName"));
                ad.setCusPwd(rs.getString("CusPwd"));
                ad.setCusRmoney(rs.getInt("CusRmoney"));
                return ad;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            this.closeConnection(conn, pstmt, rs);
        }
        return null;
    }
    public int Setcus(String cusPhone,String cusNumber,String cusPwd){
        CallableStatement cstmt=null;
        Connection conn=getConnection();
        int row=0;
        try {
            cstmt=conn.prepareCall("{call SetCus(?,?,?)}");
            cstmt.setString(1,cusPhone);
            cstmt.setString(2,cusNumber);
            cstmt.setString(3,cusPwd);
            row= cstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            return row;
        }
    }
    //获得余额
    public int getCusRmoney(String cusPhone){
        int CusRmoney=0;
        String sql="SELECT CusRmoney FROM Customer WHERE CusPhone=?";
        Connection conn = this.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,cusPhone);
            rs = pstmt.executeQuery();
            if (rs.next()) {// 封装对象
                CusRmoney=rs.getInt("CusRmoney");
                return CusRmoney;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            this.closeConnection(conn, pstmt, rs);
        }
        return CusRmoney;
    }
}
