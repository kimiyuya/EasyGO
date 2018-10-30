package com.yxiao23.EasyGO.biz.impl;

import com.yxiao23.EasyGO.biz.AgencyInfoBiz;
import com.yxiao23.EasyGO.dao.AgencyInfoDao;
import com.yxiao23.EasyGO.entity.AgencyInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author yulinxiao
 * @date 2018-10-29 11:42
 */

@Service("agencyInfoBiz")
public class AgencyInfoBizImpl implements AgencyInfoBiz {
    @Autowired
    private AgencyInfoDao agencyInfoDao;
    public void add(AgencyInfo agencyInfo) {
        agencyInfoDao.insert(agencyInfo);
    }

    public void edit(AgencyInfo agencyInfo) {
        agencyInfoDao.update(agencyInfo);
    }

    public void remove(String id) {
        agencyInfoDao.delete(id);
    }

    public AgencyInfo get(String id) {
        return agencyInfoDao.select(id);
    }

    public List<AgencyInfo> getAll() {
        return agencyInfoDao.selectAll();
    }
}
