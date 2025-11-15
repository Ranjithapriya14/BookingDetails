package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.model.UserBooking;
import com.service.BookingService;


@Controller
@RequestMapping("/userbookingdetails")
public class BookingController{
	@Autowired
	private BookingService bookingService;
	
	@RequestMapping("/new")
	public String showNewBookingForm(Model model) {
		System.out.println("im in showing booking details");
		UserBooking userBooking=new UserBooking();
		model.addAttribute("userbooking",userBooking);
		return "create";
	}
	
	@PostMapping("/save")
	public String saveBooking(@ModelAttribute("userbooking") UserBooking userBooking) {
	    bookingService.saveUserBooking(userBooking);
	    return "redirect:/userbookingdetails/list";
	}

	@RequestMapping("/list")
	public String listStudents(Model model) {
		List<UserBooking> bookinglist=bookingService.getAllUserBookings();
		model.addAttribute("ubookinglist",bookinglist);
		return "list-userbooking";
	}
	
	@RequestMapping("/view/{id}")
	public String viewStudent(@PathVariable("id")Long id,Model model) {
		UserBooking userBooking=bookingService.getUserBookingById(id);
		model.addAttribute("userbooking",userBooking);
		return "view-userbooking";
	}
	
	
}