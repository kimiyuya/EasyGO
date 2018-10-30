package com.yxiao23.EasyGO.utilities;

import java.util.UUID;

/**
 * @author yulinxiao
 * @date 2018-10-29 23:02
 */
public class FileUpload {

    //	生成唯一的文件名，避免文件名冲突
    public static String getUUIDFileName(String fileName) {
        //choose the fileName after "." like xx.jpg --->.jpg
        int idx = fileName.lastIndexOf(".");
        String extention = fileName.substring(idx);
        String uuidFileName = UUID.randomUUID().toString().replace("-", "") + extention;
        return uuidFileName;
    }


}
