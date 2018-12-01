package com.yxiao23.EasyGO.biz.impl;

import com.yxiao23.EasyGO.biz.CarInfoBiz;
import com.yxiao23.EasyGO.dao.CarInfoDao;
import com.yxiao23.EasyGO.entity.CarInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author yulinxiao
 * @date 2018-10-29 16:28
 */
@Service("carInfoBiz")
public class CarInfoBizImpl implements CarInfoBiz {
    @Autowired
    private CarInfoDao carInfoDao;

    public void add(CarInfo carInfo) {
        carInfoDao.insert(carInfo);
    }

    public void edit(CarInfo carInfo) {
        carInfoDao.update(carInfo);
    }

    public void remove(String id) {
        carInfoDao.delete(id);
    }

    public CarInfo get(String id) {
        return carInfoDao.select(id);
    }

    public List<CarInfo> getAll() {
        return carInfoDao.selectAll();
    }

    public List<CarInfo> getByAgencyId(String id) {
        return carInfoDao.getByAgencyId(id);
    }


}
