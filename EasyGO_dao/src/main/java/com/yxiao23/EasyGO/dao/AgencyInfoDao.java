package com.yxiao23.EasyGO.dao;

import com.yxiao23.EasyGO.entity.AgencyInfo;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * @author yulinxiao
 * @date 2018-10-29 04:04
 */
@Repository("agencyInfoDao")
public interface AgencyInfoDao {
    void insert(AgencyInfo agencyInfo);
    void update(AgencyInfo agencyInfo);
    void delete(String id);
    AgencyInfo select(String id);
    List<AgencyInfo> selectAll();

    List<AgencyInfo> getLocationByZip(String zip);
    //int getCountOfCarByZip(String zip);
}
