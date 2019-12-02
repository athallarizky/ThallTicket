package com.TicketingEvent.demo.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "events")
public class Events {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @Column(name = "title", length = 50)
    private String title;

    @Column(name = "image", length = 150)
    private String image;

    @Lob
    @Column(name = "description", length = 30000)
    private String description;

    @Column(name = "endDate", length = 20)
    private String endDate;

    public Events(){ }

    public Events(Integer id, String title, String image, String description, String endDate) {
        this.id = id;
        this.title = title;
        this.image = image;
        this.description = description;
        this.endDate = endDate;
    }


//SETTERS
    public void setId(Integer id) {
        this.id = id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

//GETTERS
    public Integer getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getImage() {
        return image;
    }

    public String getDescription() {
        return description;
    }

    public String getEndDate() {
        return endDate;
    }
}
