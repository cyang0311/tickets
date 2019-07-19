package entity;

public class Customer {
    private String cusPhone,cusName,cusPwd;
    private int cusRmoney;

    public String getCusPhone() {
        return cusPhone;
    }

    public void setCusPhone(String cusPhone) {
        this.cusPhone = cusPhone;
    }

    public String getCusName() {
        return cusName;
    }

    public void setCusName(String cusName) {
        this.cusName = cusName;
    }

    public String getCusPwd() {
        return cusPwd;
    }

    public void setCusPwd(String cusPwd) {
        this.cusPwd = cusPwd;
    }

    public int getCusRmoney() {
        return cusRmoney;
    }

    public void setCusRmoney(int cusRmoney) {
        this.cusRmoney = cusRmoney;
    }
}
