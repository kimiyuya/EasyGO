package com.yxiao23.EasyGO.dao;

import com.yxiao23.EasyGO.entity.AgencyInfo;
import com.yxiao23.EasyGO.entity.ResultBean;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author yulinxiao
 * @date 2018-10-29 04:04
 */
@Repository("resultBeanDao")
public interface ResultBeanDao {

    List<ResultBean> getLocationByZip(String zip);
}
