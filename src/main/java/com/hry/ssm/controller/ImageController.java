package com.hry.ssm.controller;

import com.hry.ssm.service.ImageService;
import com.hry.ssm.utils.JsonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.util.Map;

/**
 * 图片的Controller
 */
@Controller
public class ImageController {
    @Autowired
    private ImageService imageService;

    /**
     * 上传图片的controller实现方法
     * @param uploadImage 上传的图片文件
     * @return
     */
    @RequestMapping("/image/upload")
    @ResponseBody
    public String imageUpload(MultipartFile uploadImage) {
        Map result = imageService.uploadImage(uploadImage);
        String json = JsonUtils.objectToJson(result);
        return json;
    }

}
