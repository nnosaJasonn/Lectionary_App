package com.acna.lectionary.Models;

import javax.persistence.*;


@Entity
@Table(name = "readings")
public class Reading {
    @Id
    @GeneratedValue
    @Column(nullable = false, columnDefinition = "INT(11) UNSIGNED")
    private Long id;

    @Column
    private String oldT;

    @Column
    private String psalm;

    @Column
    private String epistle;

    @Column
    private String newT;

    @ManyToOne
    private Year year;

    @ManyToOne
    private Proper proper;





    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getOldT() {
        return oldT;
    }

    public void setOldT(String oldT) {
        this.oldT = oldT;
    }

    public String getPsalm() {
        return psalm;
    }

    public void setPsalm(String psalm) {
        this.psalm = psalm;
    }

    public String getEpistle() {
        return epistle;
    }

    public void setEpistle(String epistle) {
        this.epistle = epistle;
    }

    public String getNewT() {
        return newT;
    }

    public void setNewT(String newT) {
        this.newT = newT;
    }

    public Year getYear() {
        return year;
    }

    public void setYear(Year year) {
        this.year = year;
    }

    public Proper getProper() {
        return proper;
    }

    public void setProper(Proper proper) {
        this.proper = proper;
    }
}
