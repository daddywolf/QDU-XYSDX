package model;

/**
 * Created by 姜志鹏 on 2016/5/9.
 */
public class Address {
    private int addressid;
    private int userid;
    private String receiver;
    private String mobile;
    private String dormitoryBd;
    private String dormitoryRm;
    private String status;

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getAddressid() {
        return addressid;
    }

    public void setAddressid(int addressid) {
        this.addressid = addressid;
    }

    public String getDormitoryBd() {
        return dormitoryBd;
    }

    public void setDormitoryBd(String dormitoryBd) {
        this.dormitoryBd = dormitoryBd;
    }

    public String getDormitoryRm() {
        return dormitoryRm;
    }

    public void setDormitoryRm(String dormitoryRm) {
        this.dormitoryRm = dormitoryRm;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }


}
