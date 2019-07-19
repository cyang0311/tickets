package Dao;

import entity.Att;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class AttDao extends SqlBean{
    public List<Att> getAtt(){
        String sql="select * FROM Att";
        Connection conn=getConnection();
        PreparedStatement pstmt=null;
        ResultSet rs=null;
        List<Att> attList=new ArrayList<Att>();
        try {
            pstmt=conn.prepareStatement(sql);
            rs=pstmt.executeQuery();
            while (rs.next()){
                Att att=new Att();
                att.setAttId(rs.getInt("AttId"));
                att.setAttName(rs.getString("AttName"));
                att.setTkPrice(rs.getInt("TKprice"));
                att.setrD(rs.getInt("RD"));
                att.setState(rs.getString("State"));
                attList.add(att);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally { closeConnection(conn,pstmt,rs);
        }
        return attList;
    }
    public int buyTicket(int attId, String cusPhone, int bNumber, String bdate){
        CallableStatement cstmt=null;
        Connection conn=getConnection();
        int row=0;
        try {
            cstmt=conn.prepareCall("{call SetSrecord(?,?,?,?)}");
            cstmt.setInt(1,attId);
            cstmt.setString(2,cusPhone);
            cstmt.setInt(3,bNumber);
            cstmt.setString(4,bdate);
            row= cstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            return row;
        }
    }
    public Att getAttid(int attid1){
        String sql="select * FROM Att WHERE AttId=?";
        Connection conn=getConnection();
        PreparedStatement pstmt=null;
        ResultSet rs=null;
        Att att=new Att();
        try {
            pstmt=conn.prepareStatement(sql);
            pstmt.setInt(1,attid1);
            rs=pstmt.executeQuery();
            if (rs.next()){
                att.setAttId(rs.getInt("AttId"));
                att.setAttName(rs.getString("AttName"));
                att.setTkPrice(rs.getInt("TKprice"));
                att.setrD(rs.getInt("RD"));
                att.setState(rs.getString("State"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally { closeConnection(conn,pstmt,rs);
        }
        return att;
    }
    public int Catt(int attId,int tkprice,String state){
        CallableStatement cstmt=null;
        Connection conn=getConnection();
        int row=0;
        try {
            cstmt=conn.prepareCall("{call CAtt(?,?,?)}");
            cstmt.setInt(1,attId);
            cstmt.setInt(2,tkprice);
            cstmt.setString(3,state);
            row= cstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            return row;
        }
    }
    public List<Att> getAtt(int attId){
        String sql="select * FROM Att WHERE AttId = ?";
        Connection conn=getConnection();
        PreparedStatement pstmt=null;
        ResultSet rs=null;
        List<Att> attList=new ArrayList<Att>();
        try {
            pstmt=conn.prepareStatement(sql);
            pstmt.setInt(1,attId);
            rs=pstmt.executeQuery();
            if (rs.next()){
                Att att=new Att();
                att.setAttId(rs.getInt("AttId"));
                att.setAttName(rs.getString("AttName"));
                att.setTkPrice(rs.getInt("TKprice"));
                att.setrD(rs.getInt("RD"));
                att.setState(rs.getString("State"));
                attList.add(att);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally { closeConnection(conn,pstmt,rs);
        }
        return attList;
    }
}

