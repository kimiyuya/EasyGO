package com.yxiao23.EasyGO.controller;

import com.yxiao23.EasyGO.biz.AgencyInfoBiz;
import com.yxiao23.EasyGO.biz.CarInfoBiz;
import com.yxiao23.EasyGO.entity.CarInfo;
import com.yxiao23.EasyGO.global.Contant;
import com.yxiao23.EasyGO.utilities.FileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import java.io.*;
import java.util.Map;

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
    //@RequestParam("carImage") MultipartFile carImage
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(CarInfo carInfo, @RequestPart("image") MultipartFile image) throws IOException {
        String path = servletContext.getRealPath("/img");
        String url = path+"/"+image.getOriginalFilename();
        image.transferTo(new File(url));


        //String fileName = carImage.getName();
        String s = carInfo.getCarImage();
        System.out.println(s);
//        if(fileName !=null && !"".equals(fileName)){
//            String uuidFileName = FileUpload.getUUIDFileName(fileName);
//            try {
//                InputStream is = carImage.getInputStream();
//                String path = servletContext.getRealPath("/img");
//                url = path + "/" + uuidFileName;
//                OutputStream os = new FileOutputStream(url);
//                int len = 0;
//                byte[] b = new byte[1024];
//                while ((len = is.read(b)) != -1){
//                    os.write(b,0,len);
//                }
//                is.close();
//                os.close();
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//        }

        CarInfo car = new CarInfo();
        car.setAgencyId(carInfo.getAgencyId());
        car.setCarBrand(carInfo.getCarBrand());
        car.setCarDescribe(carInfo.getCarDescribe());
        car.setCarId(carInfo.getCarId());
        car.setCarImage(url);
        car.setCarName(carInfo.getCarName());
        car.setCarPrice(carInfo.getCarPrice());
        car.setCarType(carInfo.getCarType());

        carInfoBiz.add(car);
        return "redirect:list";
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
