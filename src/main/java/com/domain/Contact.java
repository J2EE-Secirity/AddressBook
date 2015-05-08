package com.domain;

import com.sun.istack.internal.NotNull;

import javax.persistence.*;

/**
 * @author Lazarchuk Alex
 * @version 1.0
 */

@Entity
//@Table(name = "CONTACTS")
@Table(name = "contacts")
public class Contact {

    @Id
//    @Column(name = "ID")
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    @NotNull
    private Integer id;

//    @Column(name = "FIO")
    @Column(name = "fio")
    private String fio;

//    @Column(name = "EMAIL")
    @Column(name = "email")
    private String email;

//    @Column(name = "ADDRESS")
    @Column(name = "address")
    private String address;

//    @Column(name = "TELEPHONE")
    @Column(name = "telephone")
    private String telephone;

//    @Column(name = "ORGANIZATION")
    @Column(name = "organization")
    private String organization;

//    @Column(name = "POSITION")
    @Column(name = "position")
    @Enumerated(EnumType.STRING)
    private Position position;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFio() {
        return fio;
    }

    public void setFio(String fio) {
        this.fio = fio;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getOrganization() {
        return organization;
    }

    public void setOrganization(String organization) {
        this.organization = organization;
    }

    public Position getPosition() {
        return position;
    }

    public void setPosition(Position position) {
        this.position = position;
    }
}
