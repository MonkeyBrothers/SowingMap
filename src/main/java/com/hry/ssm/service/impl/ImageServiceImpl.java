package com.hry.ssm.service.impl;

import com.hry.ssm.service.ImageService;
import com.hry.ssm.utils.FTPClientUtil;
import com.hry.ssm.utils.IdUtil;
import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.HashMap;
import java.util.Map;

@Service
public class ImageServiceImpl implements ImageService {

    @Value("${FTP_ADDRESS}")
    private String FTP_ADDRESS;
    @Value("${FTP_PORT}")
    private int FTP_PORT;
    @Value("${FTP_USERNAME}")
    private String FTP_USERNAME;
    @Value("${FTP_PASSWORD}")
    private String FTP_PASSWORD;
    @Value("${FTP_BASE_URL}")
    private String FTP_BASE_URL;
    @Value("${IMAGE_BASE_URL}")
    private String IMAGE_BASE_URL;

    /**
     * 图片上传业务层实现
     *
     * @param uploadImage
     * @return
     */
    @Override
    public Map uploadImage(MultipartFile uploadImage) {
        Map resultMap = new HashMap();
        try {
            // 先取出旧的文件名 之后再生成一个新的文件名
            String oldName = uploadImage.getOriginalFilename();
            // 生成新的文件名
            String newName = IdUtil.genImageName();
            // 生成新的文件名
            newName = newName + oldName.substring(oldName.lastIndexOf("."));
            // 设置图片
            String imagePath = new DateTime().toString("/yyyy/MM/dd");
            // 调用FTPClientUtil上传图片
            boolean result = FTPClientUtil.uploadFile(FTP_ADDRESS, FTP_PORT, FTP_USERNAME, FTP_PASSWORD,
                    FTP_BASE_URL, imagePath, newName, uploadImage.getInputStream());
            // 上传失败判断
            if (!result) {
                // 设置json返回status
                resultMap.put("error", 1);
                // 设置提示信息
                resultMap.put("message", "上传失败");
                return resultMap;
            }
            // 上传成功
            resultMap.put("success", 0);
            // 设置图片全路径
            resultMap.put("url", IMAGE_BASE_URL + imagePath + "/" + newName);
            return resultMap;
        } catch (Exception e) {
            // 输出异常信息
            e.printStackTrace();
            resultMap.put("error", 1);
            resultMap.put("message", "上传发生异常！");
            return resultMap;
        }
    }
}
