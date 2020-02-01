package com.yxiao23.EasyGO.utilities;

import com.yxiao23.EasyGO.entity.RentalAmount;
import com.yxiao23.EasyGO.entity.Transaction;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.Date;

public class MySqlDataStoreUtilities {
    static Connection conn = null;

    public static void getConnection() {

        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mytest?useUnicode=true&characterEncoding=utf-8", "root", "yanxue520a");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public static List<Transaction> selectDailyTransaction() {
        List<Transaction> transactions = new ArrayList<>();

        try {
            getConnection();

            String selectAcc = "SELECT cou" +
                    "fffnt(pickup_time) as soldAmount, pickup_time from orders group by pickup_time";
            PreparedStatement pst = conn.prepareStatement(selectAcc);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {

                String date = rs.getDate("pickup_time").toString();
                Transaction transaction = new Transaction(date, rs.getInt("soldAmount"));
                transactions.add(transaction);
            }
        } catch (Exception e) {
        }
        return transactions;
    }

    public static List<RentalAmount> selectSaleAmount() {
        List<RentalAmount> rentalAmounts = new ArrayList<>();
        try {
            getConnection();

            String selectAcc = "select DISTINCT(temp.car_id),temp.saleAmount,orders.total_price, carInfo.car_brand,carInfo.car_name\n" +
                    "from orders, carInfo, (select car_id, count(car_id) as saleAmount from orders group by car_id) as temp \n" +
                    "where orders.car_id = temp.car_id and orders.car_id=carInfo.car_id;";
            PreparedStatement pst = conn.prepareStatement(selectAcc);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                RentalAmount rentalAmount = new RentalAmount(rs.getString("car_brand"), rs.getString("car_name"), rs.getString("total_price"), rs.getInt("saleAmount"));

                rentalAmounts.add(rentalAmount);
            }
        } catch (Exception e) {
        }
        return rentalAmounts;
    }
}