package com.TicketingEvent.demo.model;

import javax.persistence.*;

@Entity
@Table(name = "orders")
public class Orders {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer id;

    @Column(name = "status", length = 25)
    private String status;

    @Column(name = "evidence", length = 150)
    private String evidence;

    @Column(name = "ticketQty")
    private Integer ticketQty;

    @Column(name = "totalPrice")
    private Long totalPrice;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    private Users users;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "event_id", referencedColumnName = "id")
    private Events events;


//    // Insight : This code implements user_id is primary key in Orders
//    @OneToOne
//    @MapsId
//    private Users users;


//    // Insight : This code implements pivot table
//    @OneToOne(cascade = CascadeType.ALL)
//    @JoinTable(
//            name = "user_order",
//            joinColumns = { @JoinColumn(name = "order_id", referencedColumnName = "id") },
//            inverseJoinColumns = { @JoinColumn(name = "user_id", referencedColumnName = "id") })
//    private Users users;

}
