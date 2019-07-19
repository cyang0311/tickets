package entity;

import java.util.Date;

public class RefundRecord {
    private int id;
    private int attId;
    private String cusPhone;
    private Date rDate;
    private int rNumber;
    private int rCost;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAttId() {
        return attId;
    }

    public void setAttId(int attId) {
        this.attId = attId;
    }

    public String getCusPhone() {
        return cusPhone;
    }

    public void setCusPhone(String cusPhone) {
        this.cusPhone = cusPhone;
    }

    public Date getrDate() {
        return rDate;
    }

    public void setrDate(Date rDate) {
        this.rDate = rDate;
    }

    public int getrNumber() {
        return rNumber;
    }

    public void setrNumber(int rNumber) {
        this.rNumber = rNumber;
    }

    public int getrCost() {
        return rCost;
    }

    public void setrCost(int rCost) {
        this.rCost = rCost;
    }
}
