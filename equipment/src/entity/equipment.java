package entity;

public class equipment {
    
	private int EID;
	private String equipName;
	private int quantity;
	private int aquantity;
	private String place;
	
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
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getAquantity() {
		return aquantity;
	}
	public void setAquantity(int aquantity) {
		this.aquantity = aquantity;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	
}
