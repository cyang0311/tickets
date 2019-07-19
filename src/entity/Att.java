package entity;

public class Att {
    private int attId;
    private String attName;
    private int tkPrice;
    private int rD;
    private String state;

    public int getAttId() {
        return attId;
    }

    public void setAttId(int attId) {
        this.attId = attId;
    }

    public String getAttName() {
        return attName;
    }

    public void setAttName(String attName) {
        this.attName = attName;
    }

    public int getTkPrice() {
        return tkPrice;
    }

    public void setTkPrice(int tkPrice) {
        this.tkPrice = tkPrice;
    }

    public int getrD() {
        return rD;
    }

    public void setrD(int rD) {
        this.rD = rD;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
