package com.yxiao23.EasyGO.controller;

import com.yxiao23.EasyGO.biz.UsersBiz;
import com.yxiao23.EasyGO.entity.Users;
import com.yxiao23.EasyGO.global.Contant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * @author yulinxiao
 * @date 2018-10-29 11:51
 */

@Controller("usersController")
@RequestMapping("/users")
public class UsersController {

    @Autowired
    private UsersBiz usersBiz;
    @RequestMapping("/list")
    public String list(Map<String,Object> map){
        map.put("list",usersBiz.getAll());
        return "users_list";
    }

    @RequestMapping("/to_add")
    public String toAdd(Map<String,Object> map){
        map.put("users",new Users());
        map.put("typelist", Contant.getUserType());
        return "users_add";
    }

    @RequestMapping("/add")
    public String add(Users users){
        usersBiz.add(users);
        return "redirect:list";
    }

    @RequestMapping(value = "/to_update", params = "id")
    public String toUpdate(String id,Map<String,Object> map){
        map.put("users",usersBiz.get(id));
        return "users_update";
    }

    @RequestMapping("/update")
    public String update(Users users){
        usersBiz.edit(users);
        return "redirect:list";
    }

    @RequestMapping(value = "/remove", params = "id")
    public String remove(String id){
        usersBiz.remove(id);
        return "redirect:list";
    }
}
