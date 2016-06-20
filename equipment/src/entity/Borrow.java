package entity;

import java.sql.Connection;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



import java.sql.Timestamp;

import equipment.DbUtil;

public class Borrow {

	private int BID;
	private int EID;
	private String equipName;
	private int bquantity;
	private String name;
	private String tel;
	private String college;
	private Date bdate;
	private Date rdate;
	private Boolean state;
	
	public int getBID() {
		return BID;
	}
	public void setBID(int bID) {
		BID = bID;
	}
	public int getEID() {
		return EID;
	}
	public void setEID(int eID) {
		EID = eID;
	}
	public String getEquipName() {
		return equipName;
	}
	public void setEquipName(String equipName) {
		this.equipName = equipName;
	}
	public int getBquantity() {
		return bquantity;
	}
	public void setBquantity(int bquantity) {
		this.bquantity = bquantity;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public Date getBdate() {
		return bdate;
	}
	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}
	public Date getRdate() {
		return rdate;
	}
	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
	public Boolean getState() {
		return state;
	}
	public void setState(Boolean state) {
		this.state = state;
	}
	public void save(Borrow b) throws SQLException{
		Connection conn=DbUtil.getConnection();
		PreparedStatement stmt=conn.prepareStatement("insert into borrow(EID,equipName,bquantity,name,tel,college,bdate) values(?,?,?,?,?,?,?)");
		stmt.setInt(1, b.getEID());
		stmt.setString(2, b.getEquipName());
		stmt.setInt(3, b.getBquantity());
		stmt.setString(4, b.getName());
		stmt.setString(5,b.getTel());
		stmt.setString(6, b.getCollege());
		stmt.setTimestamp(7, new Timestamp(bdate.getTime()));
		
		stmt.executeUpdate();
		stmt.close();
		conn.close();

	}
	public  int selectEIDbyBID(int BID) throws SQLException{
		int id=0;
		Connection conn=DbUtil.getConnection();
		PreparedStatement stmt=conn.prepareStatement("select EID from borrow where BID='"+BID+"'");
		ResultSet rs=stmt.executeQuery();
		while (rs.next()) {
			 id=rs.getInt("EID");
		}
		return id;
	}
	public  int selectEID(String ename) throws SQLException{
		int id=0;
		Connection conn=DbUtil.getConnection();
		PreparedStatement stmt=conn.prepareStatement("select EID from equipment where equipName='"+ename+"'");
		ResultSet rs=stmt.executeQuery();
		while (rs.next()) {
			 id=rs.getInt("EID");
		}
		return id;
	}
	public  int selectbquantity(int id) throws SQLException{
		int bquantity=0;
		Connection conn=DbUtil.getConnection();
		PreparedStatement stmt=conn.prepareStatement("select bquantity from borrow where BID='"+id+"'");
		ResultSet rs=stmt.executeQuery();
		while (rs.next()) {
			 bquantity=rs.getInt("bquantity");
		}
		return bquantity;
	}
	
	public  int selectaquantity(int id) throws SQLException{
		int aquantity=0;
		Connection conn=DbUtil.getConnection();
		PreparedStatement stmt=conn.prepareStatement("select aquantity from equipment where EID='"+id+"'");
		ResultSet rs=stmt.executeQuery();
		while (rs.next()) {
			 aquantity=rs.getInt("aquantity");
		}
		return aquantity;
	}
	public void update(int id ,int bquantity) throws SQLException{
		Borrow b=new Borrow();
		int quantity1=b.selectaquantity(id);
		int quantity2=quantity1-bquantity;
		Connection conn=DbUtil.getConnection();
		PreparedStatement stmt=conn.prepareStatement("update equipment set aquantity='"+quantity2+"'where EID='"+id+"'");
		stmt.executeUpdate();
	}
	public void returnback(int id ,int bquantity) throws SQLException{
		Borrow b=new Borrow();
		int quantity1=b.selectaquantity(id);
		int quantity2=quantity1+bquantity;
		Connection conn=DbUtil.getConnection();
		PreparedStatement stmt=conn.prepareStatement("update equipment set aquantity='"+quantity2+"'where EID='"+id+"'");
		stmt.executeUpdate();
	}
	public void changestate(int id ) throws SQLException{
		Borrow b=new Borrow();
		Boolean state=true;
		
		Connection conn=DbUtil.getConnection();
		PreparedStatement stmt=conn.prepareStatement("update borrow set state='"+state+"'where BID='"+id+"'");
		stmt.executeUpdate();
	}

}