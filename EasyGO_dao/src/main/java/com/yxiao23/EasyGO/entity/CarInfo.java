package com.yxiao23.EasyGO.entity;

import java.math.BigDecimal;

/**
 * @author yulinxiao
 * @date 2018-10-29 15:29
 */
public class CarInfo {
    private  String carId;
    private  String carBrand;
    private  String carName;
    private  String carType;
    private double carPrice;
    private  String carDescribe;
    private  String carImage;
    private  String agencyId;
    private  AgencyInfo agencyInfo;

    public AgencyInfo getAgencyInfo() {
        return agencyInfo;
    }

    public void setAgencyInfo(AgencyInfo agencyInfo) {
        this.agencyInfo = agencyInfo;
    }

    public String getCarId() {
        return carId;
    }

    public void setCarId(String carId) {
        this.carId = carId;
    }

    public String getCarBrand() {
        return carBrand;
    }

    public void setCarBrand(String carBrand) {
        this.carBrand = carBrand;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    public String getCarType() {
        return carType;
    }

    public void setCarType(String carType) {
        this.carType = carType;
    }

    public double getCarPrice() {
        return carPrice;
    }

    public void setCarPrice(double carPrice) {
        this.carPrice = carPrice;
    }

    public String getCarDescribe() {
        return carDescribe;
    }

    public void setCarDescribe(String carDescribe) {
        this.carDescribe = carDescribe;
    }

    public String getCarImage() {
        return carImage;
    }

    public void setCarImage(String carImage) {
        this.carImage = carImage;
    }

    public String getAgencyId() {
        return agencyId;
    }

    public void setAgencyId(String agencyId) {
        this.agencyId = agencyId;
    }
}
