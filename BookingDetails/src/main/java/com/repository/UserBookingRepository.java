package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.model.UserBooking;

@Repository
public interface UserBookingRepository extends JpaRepository<UserBooking,Long> {

}
