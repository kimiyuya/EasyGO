package com.yxiao23.EasyGO.biz;

import com.yxiao23.EasyGO.entity.AgencyInfo;

import java.util.List;

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
}
