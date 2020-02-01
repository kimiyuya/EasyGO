package com.yxiao23.EasyGO.entity;

import java.util.Date;

/**
 * @author yulinxiao
 * @date 2018-12-01 18:18
 */
public class Transaction {
    private String date;
    private int amount;

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public Transaction(String date, int amount) {
        this.date = date;
        this.amount = amount;
    }
}
