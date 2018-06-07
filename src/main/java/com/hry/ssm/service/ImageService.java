package com.hry.ssm.service;

import com.hry.ssm.pojo.Sowing;
import org.springframework.web.multipart.MultipartFile;

import java.util.Map;

/**
 * 图片上传接口
 */
public interface ImageService {
    // 图片上传方法
    Map uploadImage(MultipartFile uploadImage);

    void uploadImageToMySql(Sowing sowing);
}
