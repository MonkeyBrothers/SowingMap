package com.hry.ssm.pojo;

public class Sowing {
    /** 图片的id */
    private Integer imageid;

    /** 图片的资源网址 */
    private String imageurl;

    /** 图片背后的连接网址 */
    private String uniform;

    /** 图片加载失败显示的文字 */
    private String imagename;

    public Integer getImageid() {
        return imageid;
    }

    public void setImageid(Integer imageid) {
        this.imageid = imageid;
    }

    public String getImageurl() {
        return imageurl;
    }

    public void setImageurl(String imageurl) {
        this.imageurl = imageurl == null ? null : imageurl.trim();
    }

    public String getUniform() {
        return uniform;
    }

    public void setUniform(String uniform) {
        this.uniform = uniform == null ? null : uniform.trim();
    }

    public String getImagename() {
        return imagename;
    }

    public void setImagename(String imagename) {
        this.imagename = imagename == null ? null : imagename.trim();
    }
}