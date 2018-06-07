package com.hry.ssm.pojo;

public class User {
    /** 记录用户注册流水号 */
    private Integer userid;

    /** 记录用户真实姓名 */
    private String username;

    /** 记录用户电话号码 */
    private Long phone;

    /** 记录用户密码 */
    private String password;

    /** 记录用户邮箱地址 */
    private String email;

    /** 记录用户学历 */
    private String edu;

    /** 记录用户工作经验 */
    private String experience;

    /** 记录用户所在城市 */
    private String city;

    /** 记录用户头像 */
    private String image;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public Long getPhone() {
        return phone;
    }

    public void setPhone(Long phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getEdu() {
        return edu;
    }

    public void setEdu(String edu) {
        this.edu = edu == null ? null : edu.trim();
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience == null ? null : experience.trim();
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city == null ? null : city.trim();
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image == null ? null : image.trim();
    }

    @Override
    public String toString() {
        return "User{" +
                "userid=" + userid +
                ", username='" + username + '\'' +
                ", phone=" + phone +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", edu='" + edu + '\'' +
                ", experience='" + experience + '\'' +
                ", city='" + city + '\'' +
                ", image='" + image + '\'' +
                '}';
    }
}