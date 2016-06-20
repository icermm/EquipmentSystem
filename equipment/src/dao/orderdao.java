package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entity.equipment;
import entity.order;
import equipment.DbUtil;



public class orderdao {
    public void buyequip(order eq) throws SQLException{
    	  Connection conn=DbUtil.getConnection();
    	 
  		 PreparedStatement stmt = conn.prepareStatement("insert into [order](equipName,oquantity,amount) values(?,?,?)");
  			stmt.setString(1, eq.getEquipName());			
  			stmt.setInt(2,eq.getOquantity());
  			stmt.setInt(3,eq.getAmount());
  		
  			//stmt.addBatch();
  			//stmt.executeBatch();
  		
  			stmt.executeUpdate();
  			
  			stmt.close();
  			conn.close();
      }
    
    private static orderdao service;

    public static orderdao getInstance() {
  		if(service == null) {
  			service = new orderdao();
  		}
  		return service;
  	}

  	
  	public List<order> getOrder() throws SQLException {
  		List<order> orders = new ArrayList<order>();
  		Connection conn = DbUtil.getConnection();
  		Statement stmt = conn.createStatement();
  		ResultSet rs = stmt.executeQuery("select * from [order]");
  		try {
  			while (rs.next()) {
  				order c = this.getOrderFromRs(rs);
  				orders.add(c);
  			}
  		} catch (SQLException e) {
  			e.printStackTrace();
  		} finally {
  			rs.close();
  			stmt.close();
  			conn.close();
  		}
  		return orders;
  	}
  	
  	private order getOrderFromRs(ResultSet rs) {
  		order c = new order();
  		try {
  			c.setOID(rs.getInt("OID"));
  			c.setEquipName(rs.getString("equipName"));
  			c.setOquantity(rs.getInt("oquantity"));
  			c.setAmount(rs.getInt("amount"));
  		
  			
  		} catch (SQLException e) {
  			e.printStackTrace();
  		}
  		return c;
  	}


}
