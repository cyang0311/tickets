package entity;

import java.util.Date;

public class RechargeRecord {
    private int id;
    private String cusPhone;
    private int amount;
    private Date RechargeDate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCusPhone() {
        return cusPhone;
    }

    public void setCusPhone(String cusPhone) {
        this.cusPhone = cusPhone;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public Date getRechargeDate() {
        return RechargeDate;
    }

    public void setRechargeDate(Date rechargeDate) {
        RechargeDate = rechargeDate;
    }
}
