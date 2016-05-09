package model;

/**
 * Created by 姜志鹏 on 2016/5/9.
 */
public class Order {
    private String orderid;
    private int userid;
    private String expressAdd;
    private String dormitoryBd;
    private String dormitoryRm;
    private String receiver;
    private String mobile;
    private int goodsCode;
    private String others;
    private String courier;
    private String courierMob;
    private int status;
    private String createTime;
    private String changeTime;
    private String deleteTime;

    public String getChangeTime() {
        return changeTime;
    }

    public void setChangeTime(String changeTime) {
        this.changeTime = changeTime;
    }

    public String getCourier() {
        return courier;
    }

    public void setCourier(String courier) {
        this.courier = courier;
    }

    public String getCourierMob() {
        return courierMob;
    }

    public void setCourierMob(String courierMob) {
        this.courierMob = courierMob;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getDeleteTime() {
        return deleteTime;
    }

    public void setDeleteTime(String deleteTime) {
        this.deleteTime = deleteTime;
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

    public String getExpressAdd() {
        return expressAdd;
    }

    public void setExpressAdd(String expressAdd) {
        this.expressAdd = expressAdd;
    }

    public int getGoodsCode() {
        return goodsCode;
    }

    public void setGoodsCode(int goodsCode) {
        this.goodsCode = goodsCode;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getOrderid() {
        return orderid;
    }

    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }

    public String getOthers() {
        return others;
    }

    public void setOthers(String others) {
        this.others = others;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }
}
