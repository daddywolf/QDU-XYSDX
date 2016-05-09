package service;

import encrypt.md5;
import model.UserInfo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by 姜志鹏 on 2016/4/27.
 */
public class UserServices {

    public boolean valiUser(UserInfo user) {
        Connection conn = new dao.Dao().getCon();
        ResultSet rs = null;
        PreparedStatement pstmt = null;
        try {
            pstmt = conn.prepareStatement("select realname from userinfo where mobile=? and password=?");
            pstmt.setString(1, user.getMobile());
            pstmt.setString(2, md5.MD5(user.getPassword()));
            rs = pstmt.executeQuery();
            if (rs.next()) {
                user.setRealName(rs.getString(1));
                return true;
            } else {
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                System.out.println(e);
            }

        }
    }

    public boolean register(UserInfo user) {
        Connection conn = new dao.Dao().getCon();
        PreparedStatement pstmt = null;
        Date date = new Date();
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String regtime = format.format(date);
        try {
            pstmt = conn.prepareStatement("INSERT INTO userinfo (mobile,password,balance,coins,status,regtime) VALUES (?,?,0.0,0,0,?)");
            pstmt.setString(1, user.getMobile());
            pstmt.setString(2, md5.MD5(user.getPassword()));
            pstmt.setString(3, regtime);
            if (pstmt.execute()) {
                return false;
            } else {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                System.out.println(e);
            }

        }
    }

}
