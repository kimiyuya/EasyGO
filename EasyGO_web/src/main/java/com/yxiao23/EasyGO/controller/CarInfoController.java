package com.yxiao23.EasyGO.controller;

import com.yxiao23.EasyGO.biz.AgencyInfoBiz;
import com.yxiao23.EasyGO.biz.CarInfoBiz;
import com.yxiao23.EasyGO.entity.CarInfo;
import com.yxiao23.EasyGO.global.Contant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import java.io.*;
import java.math.BigDecimal;
import java.util.Map;
import java.util.UUID;

/**
 * @author yulinxiao
 * @date 2018-10-29 11:51
 */

@Controller("carInfoController")
@RequestMapping("/carInfo")
public class CarInfoController {

    @Autowired
    private AgencyInfoBiz agencyInfoBiz;
    @Autowired
    private CarInfoBiz carInfoBiz;
    @Autowired
    private ServletContext servletContext;

    @RequestMapping("/list")
    public String list(Map<String,Object> map){
        map.put("list",carInfoBiz.getAll());
        return "carInfo_list";
    }

    //多这一步是为了使用springmvc的form标签，所以必须传一个对象过来
    @RequestMapping("/to_add")
    public String toAdd(Map<String,Object> map){
        map.put("carinfo",new CarInfo());
        map.put("agencylist",agencyInfoBiz.getAll());
        map.put("typelist", Contant.getType());
        return "carInfo_add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(@RequestParam("id") String id,
                      @RequestParam("image") MultipartFile image,
                      @RequestParam("brand") String brand,
                      @RequestParam("name") String name,
                      @RequestParam("price") double price,
                      @RequestParam("describe") String describe,
                      @RequestParam("agencyId") String agencyId,
                      @RequestParam("type") String type
                      ) throws IOException {
        if(image != null){
            String filePath = servletContext.getRealPath("/img");
            String originalFilename = image.getOriginalFilename();
            String newFileName = UUID.randomUUID() + originalFilename.substring(originalFilename.lastIndexOf("."));
            File file = new File(filePath + "/"+ newFileName);
            image.transferTo(file);
            CarInfo carInfo = new CarInfo();
            carInfo.setCarType(type);
            carInfo.setCarPrice(price);

            carInfo.setCarName(name);
            carInfo.setCarId(id);
            carInfo.setCarDescribe(describe);
            carInfo.setAgencyId(agencyId);
            carInfo.setCarBrand(brand);
            carInfo.setCarImage(newFileName);
            carInfoBiz.add(carInfo);
            return "redirect:list";
        }
        return "carInfo_add";




//        CarInfo car = new CarInfo();
//        car.setAgencyId(carInfo.getAgencyId());
//        car.setCarBrand(carInfo.getCarBrand());
//        car.setCarDescribe(carInfo.getCarDescribe());
//        car.setCarId(carInfo.getCarId());
//        car.setCarImage(url);
//        car.setCarName(carInfo.getCarName());
//        car.setCarPrice(carInfo.getCarPrice());
//        car.setCarType(carInfo.getCarType());
//
//        carInfoBiz.add(car);

    }

    @RequestMapping(value = "/to_update", params = "id")
    public String toUpdate(String id,Map<String,Object> map){
        map.put("carinfo",carInfoBiz.get(id));
        map.put("agencylist",agencyInfoBiz.getAll());
        map.put("typelist", Contant.getType());
        return "carInfo_update";
    }

    @RequestMapping("/update")
    public String update(CarInfo carInfo){
        carInfoBiz.edit(carInfo);
        return "redirect:list";
    }

    @RequestMapping(value = "/remove", params = "id")
    public String remove(String id){
        carInfoBiz.remove(id);
        return "redirect:list";
    }


}
