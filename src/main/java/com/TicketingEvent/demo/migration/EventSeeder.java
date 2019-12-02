package com.TicketingEvent.demo.migration;

import com.TicketingEvent.demo.model.Events;
import com.TicketingEvent.demo.repository.EventRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class EventSeeder implements CommandLineRunner {
    private EventRepository eventRepository;

    @Autowired
    public EventSeeder(EventRepository eventRepository){
        this.eventRepository = eventRepository;
    }

    @Override
    public void run(String... args) throws Exception {
        List<Events> events = new ArrayList<>();

        events.add(new Events(
                1,
                "Belajar Laravel",
                "laravel.jpg",
                "Getting Started with Laravel 101",
                "2019-11-15"));
        events.add(new Events(
                2,
                "Belajar ReactJS",
                "ReactJS.jpg",
                "Getting Started with ReactJS 101",
                "2019-11-20"
        ));
        events.add(new Events(
                3,
                "Belajar AngularJS",
                "AngularJS.jpg",
                "Getting Started with AngularJS 101",
                "2019-11-30"
        ));

        eventRepository.saveAll(events);
    }
}
