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
}
