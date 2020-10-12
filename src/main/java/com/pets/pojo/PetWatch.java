package com.pets.pojo;

/**
 * @author Binshao
 */
public class PetWatch {
    private Integer id;

    private Integer petNumber;

    private Integer age;

    private String section;

    private String species;

    private String sex;

    private String rescueAddress;

    private Double weight;

    private String salvor;

    private String registration;

    private String adoptionStatus;

    private String healthy;

    private String petPictures;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPetNumber() {
        return petNumber;
    }

    public void setPetNumber(Integer petNumber) {
        this.petNumber = petNumber;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getSection() {
        return section;
    }

    public void setSection(String section) {
        this.section = section == null ? null : section.trim();
    }

    public String getSpecies() {
        return species;
    }

    public void setSpecies(String species) {
        this.species = species == null ? null : species.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getRescueAddress() {
        return rescueAddress;
    }

    public void setRescueAddress(String rescueAddress) {
        this.rescueAddress = rescueAddress == null ? null : rescueAddress.trim();
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    public String getSalvor() {
        return salvor;
    }

    public void setSalvor(String salvor) {
        this.salvor = salvor == null ? null : salvor.trim();
    }

    public String getRegistration() {
        return registration;
    }

    public void setRegistration(String registration) {
        this.registration = registration == null ? null : registration.trim();
    }

    public String getAdoptionStatus() {
        return adoptionStatus;
    }

    public void setAdoptionStatus(String adoptionStatus) {
        this.adoptionStatus = adoptionStatus == null ? null : adoptionStatus.trim();
    }

    public String getHealthy() {
        return healthy;
    }

    public void setHealthy(String healthy) {
        this.healthy = healthy == null ? null : healthy.trim();
    }

    public String getPetPictures() {
        return petPictures;
    }

    public void setPetPictures(String petPictures) {
        this.petPictures = petPictures == null ? null : petPictures.trim();
    }

    @Override
    public String toString() {
        return "PetWatch{" +
                "id=" + id +
                ", petNumber=" + petNumber +
                ", age=" + age +
                ", section='" + section + '\'' +
                ", species='" + species + '\'' +
                ", sex='" + sex + '\'' +
                ", rescueAddress='" + rescueAddress + '\'' +
                ", weight=" + weight +
                ", salvor='" + salvor + '\'' +
                ", registration='" + registration + '\'' +
                ", adoptionStatus='" + adoptionStatus + '\'' +
                ", healthy='" + healthy + '\'' +
                ", petPictures='" + petPictures + '\'' +
                '}';
    }
}