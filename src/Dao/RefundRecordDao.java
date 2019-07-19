package Dao;

import entity.RefundRecord;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class RefundRecordDao extends SqlBean {
    public List<RefundRecord> getRefundRecordByPhone(String cusPhone){
        String sql="select * FROM RefundRecord WHERE CusPhone=?";
        Connection conn=getConnection();
        PreparedStatement pstmt=null;
        ResultSet rs=null;
        List<RefundRecord> refundRecordList=new ArrayList<RefundRecord>();
        try {
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,cusPhone);
            rs=pstmt.executeQuery();
            while (rs.next()){
                RefundRecord refundRecord=new RefundRecord();
                refundRecord.setId(rs.getInt("Id"));
                refundRecord.setAttId(rs.getInt("AttId"));
                refundRecord.setCusPhone(rs.getString("CusPhone"));
                refundRecord.setrDate(rs.getDate("RDate"));
                refundRecord.setrNumber(rs.getInt("RNumber"));
                refundRecord.setrCost(rs.getInt("RCost"));
                refundRecordList.add(refundRecord);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally { closeConnection(conn,pstmt,rs);
        }
        return refundRecordList;
    }
}
