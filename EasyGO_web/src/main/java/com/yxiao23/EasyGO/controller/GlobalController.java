package com.yxiao23.EasyGO.controller;

import com.yxiao23.EasyGO.biz.GlobalBiz;
import com.yxiao23.EasyGO.entity.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

/**
 * @author yulinxiao
 * @date 2018-11-01 01:10
 */
@Controller("globalController")
public class GlobalController {
    @Autowired
    private GlobalBiz globalBiz;

    @RequestMapping("/to_login")
    public  String toLogin(){
        return "login";
    }

    @RequestMapping("/login")
    public String login(HttpSession session, @RequestParam String id, @RequestParam String password){
        Users users = globalBiz.login(id,password);
        if(users == null){
            return "redirect:to_login";
        }
        session.setAttribute("users",users);
        return "redirect:self";
    }

    @RequestMapping("/self")
    public String self(){
        return "self";
    }

    @RequestMapping("/quit")
    public String quit(HttpSession session){
        session.setAttribute("users",null);
        return "redirect:to_login";
    }

    @RequestMapping("/to_change_password")
    public  String toChangePassword(){
        return "change_password";
    }

    @RequestMapping("/change_password")
    public String changePassword(HttpSession session, @RequestParam String old, @RequestParam String new1,@RequestParam String new2){
        Users users = (Users) session.getAttribute("users");
        if(users.getPassword().equals(old)){
            if(new1.equals(new2)){
                users.setPassword(new1);
                globalBiz.changePassword(users);
                return "redirect:self";
            }
        }
        return "redirect:to_change_password";
    }






}
