package entity;

public class order {

	private int OID;
	private int EID;
	private String equipName;
	private int oquantity;
	private int amount;
	
	public int getOID() {
		return OID;
	}
	public void setOID(int oID) {
		OID = oID;
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
	public int getOquantity() {
		return oquantity;
	}
	public void setOquantity(int oquantity) {
		this.oquantity = oquantity;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
}
