package Dao;

import entity.SaleRecord;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2018/6/11.
 */
public class SaleRecordDao extends SqlBean {
    public List<SaleRecord> getSaleRecordByPhone(String cusPhone){
        String sql="select * FROM SaleRecord WHERE CusPhone=?";
        Connection conn=getConnection();
        PreparedStatement pstmt=null;
        ResultSet rs=null;
        List<SaleRecord> attList=new ArrayList<SaleRecord>();
        try {
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,cusPhone);
            rs=pstmt.executeQuery();
            while (rs.next()){
                SaleRecord saleRecord=new SaleRecord();
                saleRecord.setId(rs.getInt("Id"));
                saleRecord.setAttId(rs.getInt("AttId"));
                saleRecord.setCusPhone(rs.getString("CusPhone"));
                saleRecord.setbDate(rs.getDate("BDate"));
                saleRecord.setbNumber(rs.getInt("BNumber"));
                saleRecord.setmCost(rs.getInt("MCost"));
                attList.add(saleRecord);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally { closeConnection(conn,pstmt,rs);
        }
        return attList;
    }
    //用于退票
    public int tuiPiao(int attId){
        CallableStatement cstmt=null;
        Connection conn=getConnection();
        int row=0;
        try {
            cstmt=conn.prepareCall("{call  RefundById(?)}");
            cstmt.setInt(1,attId);
            row= cstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            return row;
        }
    }
    //给会员使用，用于修改UpdateSalerecord.jsp的购票信息
    public int update(int id,int attId,int bnumber){
        CallableStatement cstmt=null;
        Connection conn=getConnection();
        int row=0;
        try {
            cstmt=conn.prepareCall("{call  change(?,?,?)}");
            cstmt.setInt(1,id);
            cstmt.setInt(2,attId);
            cstmt.setInt(3,bnumber);
            row= cstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            return row;
        }
    }
    //为了显示该会员的购票记录
    public SaleRecord getSaleRecordById(int id){
        String sql="select * FROM SaleRecord WHERE id=?";
        Connection conn=getConnection();
        PreparedStatement pstmt=null;
        ResultSet rs=null;
        try {
            pstmt=conn.prepareStatement(sql);
            pstmt.setInt(1,id);
            rs=pstmt.executeQuery();
            while (rs.next()){
                SaleRecord saleRecord=new SaleRecord();
                saleRecord.setId(rs.getInt("Id"));
                saleRecord.setAttId(rs.getInt("AttId"));
                saleRecord.setCusPhone(rs.getString("CusPhone"));
                saleRecord.setbDate(rs.getDate("BDate"));
                saleRecord.setbNumber(rs.getInt("BNumber"));
                saleRecord.setmCost(rs.getInt("MCost"));
                return saleRecord;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally { closeConnection(conn,pstmt,rs);
        }
        return null;
    }
}
