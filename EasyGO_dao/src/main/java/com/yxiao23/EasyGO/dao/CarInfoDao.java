package com.yxiao23.EasyGO.dao;

import com.yxiao23.EasyGO.entity.AgencyInfo;
import com.yxiao23.EasyGO.entity.CarInfo;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author yulinxiao
 * @date 2018-10-29 04:04
 */
@Repository("carInfoDao")
public interface CarInfoDao {
    void insert(CarInfo carInfo);
    void update(CarInfo carInfo);
    void delete(String id);
    CarInfo select(String id);
    List<CarInfo> selectAll();
}
