package com.yxiao23.EasyGO.controller;

import com.yxiao23.EasyGO.biz.GlobalBiz;
import com.yxiao23.EasyGO.biz.UsersBiz;
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
    @Autowired
    private UsersBiz usersBiz;

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

    @RequestMapping("/to_register")
    public  String toRegister(){
        return "register";
    }

    @RequestMapping("/register")
    public String register(HttpSession session,
                           @RequestParam String id,
                           @RequestParam String name,
                           @RequestParam String phone,
                           @RequestParam String password,
                           @RequestParam String repassword
                           ){
        Users users = new Users();
        if(password.equals(repassword)){
            users.setUserId(id);
            users.setUserName(name);
            users.setUserPhone(phone);
            users.setPassword(password);
            users.setUserType("user");
            session.setAttribute("users",users);
            usersBiz.add(users);
            return "redirect:choose_car";
        }
        return "redirect:to_register";

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
