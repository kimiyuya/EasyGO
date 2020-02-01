package com.yxiao23.EasyGO.utilities;

import sun.jvm.hotspot.oops.ArrayKlass;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;


public class AjaxUtility {
    StringBuffer sb = new StringBuffer();
    boolean namesAdded = false;
    static Connection conn = null;
    static String message;

    public static String getConnection() {

        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mytest?useUnicode=true&amp;characterEncoding=utf-8",
                    "root", "yanxue520a");
            message = "Successful";
            return message;
        } catch (Exception e) {
            message = "unsuccessful";
            return message;
        }
    }


    public static ArrayList<String> getData() {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            getConnection();

            String selectLocation = "select DISTINCT agency_location from agencyInfo";
            PreparedStatement pst = conn.prepareStatement(selectLocation);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                String location = rs.getString("agency_location");
                arrayList.add(location);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    public static boolean storeData(Map<String, Object> map) {
        try {

            getConnection();
            String insertIntoProductQuery = "INSERT INTO productDetails(id,productName,productImage,productManufacturer,productCondition,productPrice,productType,productDiscount) "
                    + "VALUES (?,?,?,?,?,?,?,?);";

            String id = String.valueOf(map.get("id"));
            String name = String.valueOf(map.get("name"));
            double price = Double.parseDouble(String.valueOf(map.get("price")));
            String image = String.valueOf(map.get("image"));
            String retailer = String.valueOf(map.get("manufacturer"));
            String productCondition = String.valueOf(map.get("condition"));
            double discount = Double.parseDouble(String.valueOf(map.get("discount")));
            String catalog = String.valueOf(map.get("productCatalog"));

            int condition = 0;

            switch (productCondition) {
                case "New":
                    condition = 0;
                    break;
                case "Used":
                    condition = 1;
                    break;
                case "Refurbished":
                    condition = 2;
                    break;

            }

            PreparedStatement pst = conn.prepareStatement(insertIntoProductQuery);
            //set the parameter for each column and execute the prepared statement
            pst.setString(1, id);
            pst.setString(2, name);
            pst.setString(3, image);
            pst.setString(4, retailer);
            pst.setInt(5, condition);
            pst.setDouble(6, price);
            pst.setString(7, catalog);
            pst.setDouble(8, discount);
            pst.execute();

            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean deleteProduct(String productId) {
        try {
            getConnection();
            String deleteProductsQuery = "Delete from Productdetails where Id=?";
            PreparedStatement pst = conn.prepareStatement(deleteProductsQuery);
            pst.setString(1, productId);
            pst.executeUpdate();

            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean updateProducts(String productType, String productId, String productName, double productPrice, String productImage, String productManufacturer, String productCondition, double productDiscount) {
        try {

            int condition = 0;

            switch (productCondition) {
                case "New":
                    condition = 0;
                    break;
                case "Used":
                    condition = 1;
                    break;
                case "Refurbished":
                    condition = 2;
                    break;

            }

            getConnection();
            String updateProductQuery = "UPDATE Productdetails SET productName=?,productPrice=?,productImage=?,productManufacturer=?,productCondition=?,productDiscount=?, productType=? where Id =?;";


            PreparedStatement pst = conn.prepareStatement(updateProductQuery);

            pst.setString(1, productName);
            pst.setDouble(2, productPrice);
            pst.setString(3, productImage);
            pst.setString(4, productManufacturer);
            pst.setInt(5, condition);
            pst.setDouble(6, productDiscount);
            pst.setString(7, productType);
            pst.setString(8, productId);
            pst.executeUpdate();

            return true;

        } catch (Exception e) {
            e.printStackTrace();

            return false;
        }
    }


}
