package com.yxiao23.EasyGO.biz;

import com.yxiao23.EasyGO.entity.CarInfo;

import java.util.List;

/**
 * @author yulinxiao
 * @date 2018-10-29 04:41
 */
public interface CarInfoBiz {
    void add(CarInfo carInfo);
    void edit(CarInfo carInfo);
    void remove(String id);
    CarInfo get(String id);
    List<CarInfo> getAll();

    List<CarInfo> getByAgencyId(String id);
}
