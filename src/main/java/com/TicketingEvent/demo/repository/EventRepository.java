package com.TicketingEvent.demo.repository;

import com.TicketingEvent.demo.model.Events;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface EventRepository extends JpaRepository<Events, Integer> {
    Optional<Events> findById(Integer id);
}
