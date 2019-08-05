package com.acna.lectionary.Models;
import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="seasons")
public class Season {

    @Id
    @GeneratedValue
    @Column(nullable = false, columnDefinition = "INT(11) UNSIGNED")
    private Long id;

    @Column
    private String name;

    @Column
    private String colors;

    @OneToMany(mappedBy = "season")
    @JsonBackReference
    private List<Proper> propers;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getColors() {
        return colors;
    }

    public void setColors(String colors) {
        this.colors = colors;
    }

    public List<Proper> getPropers() {
        return propers;
    }

    public void setPropers(List<Proper> propers) {
        this.propers = propers;
    }
}