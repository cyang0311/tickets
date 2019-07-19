package Dao;

import entity.Employer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class EmployerDao extends SqlBean {
    public Employer login(Employer employer){
        String sql="SELECT * FROM Employer WHERE EmployerId=? and Pwd=?";
        Connection conn = this.getConnection();
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,employer.getEmployerId());
            pstmt.setString(2,employer.getPwd());
            rs = pstmt.executeQuery();
            if (rs.next()) {// 封装对象
                Employer ad=new Employer();
                ad.setEmployerId(rs.getString("EmployerId"));
                ad.setPwd(rs.getString("Pwd"));
                return ad;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            this.closeConnection(conn, pstmt, rs);
        }
        return null;
    }
}
