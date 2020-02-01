package com.yxiao23.EasyGO.entity;

/**
 * @author yulinxiao
 * @date 2018-12-01 18:16
 */
public class RentalAmount {

    private String brand;
    private String name;
    private String price;
    private int amount;

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public RentalAmount(String brand, String name, String price, int amount) {
        this.brand = brand;
        this.name = name;
        this.price = price;
        this.amount = amount;
    }
}
