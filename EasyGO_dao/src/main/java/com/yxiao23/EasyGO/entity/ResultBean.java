package com.yxiao23.EasyGO.entity;

/**
 * @author yulinxiao
 * @date 2018-11-28 18:29
 */
public class ResultBean {
    private double lng;

    private double lat;

    private String agencyId;

    public double getLng() {
        return lng;
    }

    public void setLng(double lng) {
        this.lng = lng;
    }

    public double getLat() {
        return lat;
    }

    public void setLat(double lat) {
        this.lat = lat;
    }

    public String getAgencyId() {
        return agencyId;
    }

    public void setAgencyId(String agencyId) {
        this.agencyId = agencyId;
    }
}
