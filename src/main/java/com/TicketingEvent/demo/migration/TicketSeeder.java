package com.TicketingEvent.demo.migration;

import com.TicketingEvent.demo.model.Tickets;
import com.TicketingEvent.demo.repository.TicketRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class TicketSeeder implements CommandLineRunner {

    private TicketRepository ticketRepository;

    @Autowired
    public TicketSeeder(TicketRepository ticketRepository){
        this.ticketRepository = ticketRepository;
    }

    @Override
    public void run(String... args) throws Exception {
        List<Tickets> tickets = new ArrayList<>();

        tickets.add(new Tickets(1, 100000, 100));
        tickets.add(new Tickets(2, 50000, 50));
        tickets.add(new Tickets(3, 25000, 25));

        ticketRepository.saveAll(tickets);
    }
}
