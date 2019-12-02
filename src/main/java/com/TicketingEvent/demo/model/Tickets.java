package com.TicketingEvent.demo.model;

import javax.persistence.*;

@Entity
@Table(name = "tickets")
public class Tickets {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @Column(name = "price")
    private long price;

    @Column(name = "quantity")
    private int quantity;

    public Tickets(){ }

    public Tickets(Integer id, long price, int quantity) {
        this.id = id;
        this.price = price;
        this.quantity = quantity;
    }

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "event_id", referencedColumnName = "id")
    private Events events;

//SETTERS
    public void setId(Integer id) {
        this.id = id;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

//GETTERS
    public Integer getId() {
        return id;
    }

    public long getPrice() {
        return price;
    }

    public int getQuantity() {
        return quantity;
    }
}
