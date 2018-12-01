package com.yxiao23.EasyGO.biz;

import com.yxiao23.EasyGO.entity.AgencyInfo;
import com.yxiao23.EasyGO.entity.ResultBean;

import java.util.List;
import java.util.Map;

/**
 * @author yulinxiao
 * @date 2018-10-29 04:41
 */
public interface AgencyInfoBiz {
    void add(AgencyInfo agencyInfo);
    void edit(AgencyInfo agencyInfo);
    void remove(String id);
    AgencyInfo get(String id);
    List<AgencyInfo> getAll();


    //根据邮编；城市名来返回该地点的经纬度信息
    List<ResultBean> getLocationByZip(String zip);

}
