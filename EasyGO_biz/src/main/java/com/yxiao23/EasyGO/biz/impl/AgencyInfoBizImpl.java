package com.yxiao23.EasyGO.biz.impl;

import com.yxiao23.EasyGO.biz.AgencyInfoBiz;
import com.yxiao23.EasyGO.dao.AgencyInfoDao;
import com.yxiao23.EasyGO.dao.ResultBeanDao;
import com.yxiao23.EasyGO.entity.AgencyInfo;
import com.yxiao23.EasyGO.entity.ResultBean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author yulinxiao
 * @date 2018-10-29 11:42
 */

@Service("agencyInfoBiz")
public class AgencyInfoBizImpl implements AgencyInfoBiz {
    @Autowired
    private AgencyInfoDao agencyInfoDao;
    @Autowired
    private ResultBeanDao resultBeanDao;


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

    public List<ResultBean> getLocationByZip(String zip) {
        List<AgencyInfo> list = agencyInfoDao.getLocationByZip(zip);
        List<ResultBean> resultList = new ArrayList<ResultBean>();
        for (int i = 0; i < list.size(); i++){
            ResultBean resultBean = new ResultBean();
            resultBean.setLng(list.get(i).getAgencyLongitude());
            resultBean.setLat(list.get(i).getAgencyLatitude());
            resultBean.setAgencyId(list.get(i).getAgencyId());
            resultList.add(resultBean);
        }

        //System.out.println(resultList);
        return resultList;
    }

}

