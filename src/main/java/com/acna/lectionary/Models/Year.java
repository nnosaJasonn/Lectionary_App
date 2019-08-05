package com.acna.lectionary.Models;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="years")
public class Year {

    @Id
    @GeneratedValue
    @Column(nullable = false, columnDefinition = "INT(11) UNSIGNED")
    private Long id;

    @Column
    private char year;

    @OneToMany(mappedBy = "year")
    @JsonBackReference
    private List<Reading> readings;



    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public char getYear() {
        return year;
    }

    public void setYear(char year) {
        this.year = year;
    }

    public List<Reading> getReadings() {
        return readings;
    }

    public void setReadings(List<Reading> readings) {
        this.readings = readings;
    }
}
