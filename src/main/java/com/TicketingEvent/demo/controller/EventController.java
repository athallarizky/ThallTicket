package com.TicketingEvent.demo.controller;

import com.TicketingEvent.demo.model.Events;
import com.TicketingEvent.demo.repository.EventRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping(value = "/event")
public class EventController {
    private EventRepository eventRepository;

    @Autowired
    public EventController(EventRepository eventRepository){
        this.eventRepository = eventRepository;
    }

    @RequestMapping(value = "/showAll", method = RequestMethod.GET)
    public List<Events> getAllEvents(){
        return eventRepository.findAll();
    }

    @RequestMapping(value = "/show/{id}", method = RequestMethod.GET)
    public Optional<Events> getEventsbyId(@PathVariable Integer id){
        return eventRepository.findById(id);

        //Insight : This code will return array, but method type must use: List<Events>
        //return eventRepository.findAllById(Collections.singleton(id));
    }
}
