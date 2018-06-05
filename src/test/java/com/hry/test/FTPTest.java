package com.hry.test;

import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;
import org.junit.Test;

import java.io.File;
import java.io.FileInputStream;

public class FTPTest {
    @Test
    public void FtpTest() throws Exception {
        // 创建FTPClient对象
        FTPClient ftpClient = new FTPClient();
        // 创建ftp连接
        ftpClient.connect("192.168.52.128", 21);
        // 登录ftp
        ftpClient.login("hry", "hry");
        // 设置缓冲大小
        ftpClient.setBufferSize(100000);
        // 读取本地文件
        FileInputStream fileInputStream = new FileInputStream(new File("E:/图片/sun.jpg"));
        // 设置上传路径
        ftpClient.changeWorkingDirectory("/home/hry/images");
        // 修改上传文件格式为二进制格式
        ftpClient.setFileType(FTP.BINARY_FILE_TYPE);
        // 上传图片并改名
        ftpClient.storeFile("test1.jpg", fileInputStream);
        // 退出关闭连接
        ftpClient.logout();
    }
}
