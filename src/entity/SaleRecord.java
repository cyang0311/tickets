package entity;

import java.util.Date;

/**
 * Created by Administrator on 2018/6/11.
 */
public class SaleRecord {
    private int id;
    private int attId;
    private String cusPhone;
    private Date bDate;
    private int bNumber;
    private int mCost;

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

    public Date getbDate() {
        return bDate;
    }

    public void setbDate(Date bDate) {
        this.bDate = bDate;
    }

    public int getbNumber() {
        return bNumber;
    }

    public void setbNumber(int bNumber) {
        this.bNumber = bNumber;
    }

    public int getmCost() {
        return mCost;
    }

    public void setmCost(int mCost) {
        this.mCost = mCost;
    }
}
