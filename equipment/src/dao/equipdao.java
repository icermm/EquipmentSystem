package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entity.*;
import equipment.DbUtil;


public class equipdao {
private static equipdao service;

  public static equipdao getInstance() {
		if(service == null) {
			service = new equipdao();
		}
		return service;
	}
  public equipment getEquipByid(int id) throws SQLException {
		equipment c=new equipment();
		Connection conn = DbUtil.getConnection();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from equipment where EID='"+id+"'");
		try {
			while (rs.next()) {
				 c = this.getEquipFromRs(rs);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			rs.close();
			stmt.close();
			conn.close();
		}
		return c;
	}
	
	
	public List<equipment> getEquip() throws SQLException {
		List<equipment> equips = new ArrayList<equipment>();
		Connection conn = DbUtil.getConnection();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from equipment");
		try {
			while (rs.next()) {
				equipment c = this.getEquipFromRs(rs);
				equips.add(c);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			rs.close();
			stmt.close();
			conn.close();
		}
		return equips;
	}
	
	private equipment getEquipFromRs(ResultSet rs) {
		equipment c = new equipment();
		try {
			c.setEID(rs.getInt("EID"));
			c.setEquipName(rs.getString("equipName"));
			c.setQuantity(rs.getInt("quantity"));
			c.setAquantity(rs.getInt("aquantity"));
			c.setPlace(rs.getString("place"));
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;
	}
	
	public List<Borrow> getBorrowList() throws SQLException {
		List<Borrow> borrowlist= new ArrayList<Borrow>();
		Connection conn = DbUtil.getConnection();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from borrow order by bdate");
		try {
			while (rs.next()) {
				Borrow b = this.getBorrowListFromRs(rs);
				borrowlist.add(b);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			rs.close();
			stmt.close();
			conn.close();
		}
		return borrowlist;
	}
	public List<Borrow> getSearchborrowList(String sname) throws SQLException {
		List<Borrow> borrowlist= new ArrayList<Borrow>();
		Connection conn = DbUtil.getConnection();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from borrow where name='"+sname+"'");
		try {
			while (rs.next()) {
				Borrow b = this.getBorrowListFromRs(rs);
				borrowlist.add(b);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			rs.close();
			stmt.close();
			conn.close();
		}
		return borrowlist;
	}
	private Borrow getBorrowListFromRs(ResultSet rs) {
		Borrow b= new Borrow();
		try {
			b.setBID(rs.getInt("BID"));
			b.setEID(rs.getInt("EID"));
			b.setEquipName(rs.getString("equipName"));
			b.setBquantity(rs.getInt("bquantity"));
			b.setName(rs.getString("name"));
			b.setTel(rs.getString("tel"));
			b.setCollege(rs.getString("college"));
			b.setBdate(rs.getDate("bdate"));
			b.setRdate(rs.getDate("rdate"));
			b.setState(rs.getBoolean("state"));
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return b;
	}
	public void update(equipment e) throws SQLException{
		
		int EID=e.getEID();
		String ename=e.getEquipName();
		int quantity=e.getQuantity();
		int aquantity=e.getAquantity();
		String place=e.getPlace();
		Connection conn=DbUtil.getConnection();
		PreparedStatement stmt=conn.prepareStatement("update equipment set equipName='"+ename+"' , quantity='"+quantity+"', aquantity='"+aquantity+"', place='"+place+"' where EID='"+EID+"'");
		stmt.executeUpdate();
		
	}
	public void delete(int id) throws SQLException{
		
		
		Connection conn=DbUtil.getConnection();
		PreparedStatement stmt=conn.prepareStatement("delete from equipment where EID='"+id+"'");
		stmt.executeUpdate();
	}	
		public void add(equipment c) throws SQLException{
			
			
			String ename=c.getEquipName();
			int quantity=c.getQuantity();
			int aquantity=c.getAquantity();
			String place=c.getPlace();
			Connection conn=DbUtil.getConnection();
			PreparedStatement stmt=conn.prepareStatement("insert into equipment values(?,?,?,?)");
			stmt.setString(1, ename);
			stmt.setInt(2, quantity);
			stmt.setInt(3, aquantity);
			stmt.setString(4, place);
			stmt.executeUpdate();
			
		
	}

}
