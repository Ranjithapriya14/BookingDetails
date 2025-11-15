package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.UserBooking;
import com.repository.UserBookingRepository;

@Service
public class BookingService {
	
	@Autowired
	private UserBookingRepository userBookingRepository;
	
	public UserBooking saveUserBooking(UserBooking userBooking) {
	    return userBookingRepository.save(userBooking);
	}

	public List<UserBooking> getAllUserBookings(){
		return userBookingRepository.findAll();
	}
	public UserBooking getUserBookingById(Long id) {
		return userBookingRepository.findById(id).orElse(null);
		
	}

}
