package com.yxiao23.EasyGO.entity;

/**
 * @author yulinxiao
 * @date 2018-10-29 03:54
 */
public class AgencyInfo {
    private  String agencyId;
    private  String agencyName;
    private  String agencyLocation;
    private  String agencyPhone;
    private  double agencyLongitude;
    private  double agencyLatitude;

    public String getAgencyId() {
        return agencyId;
    }

    public void setAgencyId(String agencyId) {
        this.agencyId = agencyId;
    }

    public String getAgencyName() {
        return agencyName;
    }

    public void setAgencyName(String agencyName) {
        this.agencyName = agencyName;
    }

    public String getAgencyLocation() {
        return agencyLocation;
    }

    public void setAgencyLocation(String agencyLocation) {
        this.agencyLocation = agencyLocation;
    }

    public String getAgencyPhone() {
        return agencyPhone;
    }

    public void setAgencyPhone(String agencyPhone) {
        this.agencyPhone = agencyPhone;
    }

    public double getAgencyLongitude() {
        return agencyLongitude;
    }

    public void setAgencyLongitude(double agencyLongitude) {
        this.agencyLongitude = agencyLongitude;
    }

    public double getAgencyLatitude() {
        return agencyLatitude;
    }

    public void setAgencyLatitude(double agencyLatitude) {
        this.agencyLatitude = agencyLatitude;
    }
}
