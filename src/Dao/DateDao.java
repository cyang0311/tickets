package Dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DateDao extends SqlBean {
    public int Setcus(String time){
        CallableStatement cstmt=null;
        Connection conn=getConnection();
        ResultSet rs=null;
        int zs=0;
        try {
            cstmt=conn.prepareCall("{call Salenumd(?)}");
            cstmt.setString(1,time);
            rs =cstmt.executeQuery();
            if (rs.next()){
                zs = rs.getInt("zs");
                return zs;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            return zs;
        }
    }
}
