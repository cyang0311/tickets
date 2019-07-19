package Dao;


import entity.Att;
import entity.Discuss;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DiscussDao extends SqlBean{
    public int newdiscuss(String cusPhone, int attId, String dContent){
        CallableStatement cstmt=null;
        Connection conn=getConnection();
        int rows = 0;
        try {
            cstmt=conn.prepareCall("{call pinlun(?,?,?)}");
            cstmt.setString(1,cusPhone);
            cstmt.setInt(2,attId);
            cstmt.setString(3,dContent);
            rows=cstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            return rows;
        }
    }
    public List<Discuss> getdis(int attId){
        String sql="select * FROM Discuss where AttId =?";
        Connection conn=getConnection();
        PreparedStatement pstmt=null;
        ResultSet rs=null;
        List<Discuss> discussesList = new ArrayList<Discuss>();
        try {
            pstmt=conn.prepareStatement(sql);
            pstmt.setInt(1,attId);
            rs=pstmt.executeQuery();
            while (rs.next()){
                Discuss discuss = new Discuss();
                discuss.setCusPhone(rs.getString("CusPhone"));
                discuss.setAttId(rs.getInt("attId"));
                discuss.setdContent(rs.getString("dContent"));
                discussesList.add(discuss);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally { closeConnection(conn,pstmt,rs);
        }

        return discussesList;
    }
}
