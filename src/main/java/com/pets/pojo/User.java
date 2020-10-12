package com.pets.pojo;

import java.io.Serializable;

/**
 * (User)实体类
 *
 * @author makejava
 * @since 2020-09-29 20:06:22
 */
public class User  {

    private Integer id;
    private String number;
    private String password;
    private String name;
    private String sex;
    private Integer age;
    private String occupation;
    private String phone;
    private String address;
    private String intention;
    private String email;
    private String weChat;
    private String authority;
    private String status;

    public User() {
    }

    public User(Integer id, String number, String password, String name, String sex, Integer age, String occupation, String phone, String address, String intention, String email, String weChat, String authority, String status) {
        this.id = id;
        this.number = number;
        this.password = password;
        this.name = name;
        this.sex = sex;
        this.age = age;
        this.occupation = occupation;
        this.phone = phone;
        this.address = address;
        this.intention = intention;
        this.email = email;
        this.weChat = weChat;
        this.authority = authority;
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getIntention() {
        return intention;
    }

    public void setIntention(String intention) {
        this.intention = intention;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getWeChat() {
        return weChat;
    }

    public void setWeChat(String weChat) {
        this.weChat = weChat;
    }

    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", number=" + number +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", sex='" + sex + '\'' +
                ", age=" + age +
                ", occupation='" + occupation + '\'' +
                ", phone=" + phone +
                ", address='" + address + '\'' +
                ", intention='" + intention + '\'' +
                ", email='" + email + '\'' +
                ", weChat='" + weChat + '\'' +
                ", authority='" + authority + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}