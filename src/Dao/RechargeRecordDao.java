package Dao;

import entity.RechargeRecord;

import java.sql.*;


public class RechargeRecordDao extends SqlBean{
    public List<RechargeRecord> getRechargeRecord(String cusPhone){
        String sql="select * FROM RechargeRecord WHERE CusPhone=?";
        Connection conn=getConnection();
        PreparedStatement pstmt=null;
        ResultSet rs=null;
        List<RechargeRecord> rechargeRecordList=new ArrayList<RechargeRecord>();
        try {
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,cusPhone);
            rs=pstmt.executeQuery();
            while (rs.next()){
                RechargeRecord rechargeRecord=new RechargeRecord();
                rechargeRecord.setId(rs.getInt("Id"));
                rechargeRecord.setCusPhone(rs.getString("CusPhone"));
                rechargeRecord.setAmount(rs.getInt("Amount"));
                rechargeRecord.setRechargeDate(rs.getDate("RechargeDate"));
                rechargeRecordList.add(rechargeRecord);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally { closeConnection(conn,pstmt,rs);
        }
        return rechargeRecordList;
    }
    public int recharge(String cusPhone,int amount){
        CallableStatement cstmt=null;
        Connection conn=getConnection();
        int row=0;
        try {
            cstmt=conn.prepareCall("{call p_recharge(?,?)}");
            cstmt.setString(1,cusPhone);
            cstmt.setInt(2,amount);
            row= cstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            return row;
        }
    }
}
