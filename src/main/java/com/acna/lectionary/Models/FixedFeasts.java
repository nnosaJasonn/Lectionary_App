package com.acna.lectionary.Models;

import com.fasterxml.jackson.databind.annotation.JsonAppend;

import javax.persistence.*;

@Entity
@Table(name="fixedFeasts")
public class FixedFeasts {
    @Id
    @GeneratedValue
    private Long id;

    @Column
    private String date;

    @OneToOne
    private Proper proper;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Proper getProper() {
        return proper;
    }

    public void setProper(Proper proper) {
        this.proper = proper;
    }
}
