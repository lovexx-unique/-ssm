package com.pets.pojo;

/**
 * @author Binshao
 */
public class Forum {
    private Integer id;
    private String number;
    private String content;

    public Forum() {
    }

    public Forum(Integer id, String number, String content) {
        this.id = id;
        this.number = number;
        this.content = content;
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "Forum{" +
                "id=" + id +
                ", number='" + number + '\'' +
                ", content='" + content + '\'' +
                '}';
    }
}
