package com.yxiao23.EasyGO.controller;

import com.yxiao23.EasyGO.biz.AgencyInfoBiz;
import com.yxiao23.EasyGO.entity.AgencyInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * @author yulinxiao
 * @date 2018-10-29 11:51
 */

@Controller("agencyInfoController")
@RequestMapping("/agencyInfo")
public class AgencyInfoController {

    @Autowired
    private AgencyInfoBiz agencyInfoBiz;
    @RequestMapping("/list")
    public String list(Map<String,Object> map){
        map.put("list",agencyInfoBiz.getAll());
        return "agencyInfo_list";
    }

    @RequestMapping("/to_add")
    public String toAdd(Map<String,Object> map){
        map.put("agencyinfo",new AgencyInfo());
        return "agencyInfo_add";
    }

    @RequestMapping("/add")
    public String add(AgencyInfo agencyInfo){
        agencyInfoBiz.add(agencyInfo);
        return "redirect:list";
    }

    @RequestMapping(value = "/to_update", params = "id")
    public String toUpdate(String id,Map<String,Object> map){
        map.put("agencyinfo",agencyInfoBiz.get(id));
        return "agencyInfo_update";
    }

    @RequestMapping("/update")
    public String update(AgencyInfo agencyInfo){
        agencyInfoBiz.edit(agencyInfo);
        return "redirect:list";
    }

    @RequestMapping(value = "/remove", params = "id")
    public String remove(String id){
        agencyInfoBiz.remove(id);
        return "redirect:list";
    }
}
