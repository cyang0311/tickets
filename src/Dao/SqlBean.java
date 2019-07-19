package Dao;
import java.sql.*;

public class SqlBean {
    Connection conn=null;
    public Connection getConnection(){
        try {
           Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
           conn= DriverManager.getConnection( "jdbc:sqlserver://localhost:1433;DatabaseName=TicketManage", "sa","123456");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return conn;
    }
    public void closeConnection(Connection conn, PreparedStatement pstmt, ResultSet rs){
        try {
            if(conn!=null)conn.close();
            if(pstmt!=null)pstmt.close();
            if(rs!=null)rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
    public int executeUpdate(String sql, List<Object> paramValue){
        Connection conn=getConnection();
        PreparedStatement pstmt=null;
        int rows=0;
        try {
            pstmt=conn.prepareStatement(sql);
            if(paramValue!=null&&paramValue.size()>0){
                setValue(pstmt,paramValue);
            }
            rows=pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            closeConnection(conn,pstmt,null);
        }
        return rows;
    }
    public void setValue(PreparedStatement pstmt,List<Object> paramValues)throws SQLException{
        for (int i = 0; i <paramValues.size() ; i++) {
            pstmt.setObject(i+1,paramValues.get(i));
        }
    }
}
