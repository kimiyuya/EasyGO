package com.yxiao23.EasyGO.entity;

/**
 * @author yulinxiao
 * @date 2018-11-29 22:06
 */
public class Review {

    private String username;
    private String carId;
    private String carName;
    private String carType;
    private double carPrice;
    private String carImage;
    private int  reviewRating;
    private String reviewDate;
    private String reviewText;

    public Review(String username, String carId, String carName, String carType, double carPrice, String carImage, int reviewRating, String reviewDate, String reviewText) {
        this.username = username;
        this.carId = carId;
        this.carName = carName;
        this.carType = carType;
        this.carPrice = carPrice;
        this.carImage = carImage;
        this.reviewRating = reviewRating;
        this.reviewDate = reviewDate;
        this.reviewText = reviewText;
    }

    public String getCarType() {
        return carType;
    }

    public void setCarType(String carType) {
        this.carType = carType;
    }

    public String getCarId() {
        return carId;
    }

    public void setCarId(String carId) {
        this.carId = carId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }


    public double getCarPrice() {
        return carPrice;
    }

    public void setCarPrice(double carPrice) {
        this.carPrice = carPrice;
    }

    public String getCarImage() {
        return carImage;
    }

    public void setCarImage(String carImage) {
        this.carImage = carImage;
    }

    public int getReviewRating() {
        return reviewRating;
    }

    public void setReviewRating(int reviewRating) {
        this.reviewRating = reviewRating;
    }

    public String getReviewDate() {
        return reviewDate;
    }

    public void setReviewDate(String reviewDate) {
        this.reviewDate = reviewDate;
    }

    public String getReviewText() {
        return reviewText;
    }

    public void setReviewText(String reviewText) {
        this.reviewText = reviewText;
    }
}
