//package com.acna.lectionary.Models;
//
//import com.fasterxml.jackson.annotation.JsonBackReference;
//
//import javax.persistence.*;
//import java.util.List;
//
//@Entity
//@Table(name="propers")
//public class Day {
//
//    @Id
//    @GeneratedValue
//    @Column(nullable = false, columnDefinition = "INT(11) UNSIGNED")
//    private Long id;
//
//    @Column(nullable = false)
//    private String name;
//
//    @Column(columnDefinition = "TEXT")
//    private String collect;
//
//    @OneToMany(mappedBy = "day")
//    @JsonBackReference
//    private List<Reading> readings;
//
//    @ManyToOne
//    private Season season;
//
//    public String getCollect() {
//        return collect;
//    }
//
//    public void setCollect(String collect) {
//        this.collect = collect;
//    }
//
//    public Season getSeason() {
//        return season;
//    }
//
//    public void setSeason(Season season) {
//        this.season = season;
//    }
//
//    public Long getId() {
//        return id;
//    }
//
//    public void setId(Long id) {
//        this.id = id;
//    }
//
//    public String getName() {
//        return name;
//    }
//
//    public void setName(String name) {
//        this.name = name;
//    }
//
//    public List<Reading> getReadings() {
//        return readings;
//    }
//
//    public void setReadings(List<Reading> readings) {
//        this.readings = readings;
//    }
//}