package com.tapfoods.daoimpl;

import java.time.LocalDateTime;

import com.tapfoods.model.User;

public class Demo {

	public static void main(String[] args) {

		UserDaoImpl udi = new UserDaoImpl();

		
		User u = new User(1 , "Gulaboo", "Rani@gmail.com", 3762, "Gulbarga", "rani875", "2374876", "Customer", LocalDateTime.now(), LocalDateTime.now());
		udi.updateUser(u);

//		RestaurantDaoImpl rdi = new RestaurantDaoImpl();
//		Restaurant r = new Restaurant(4,"Udapi Grand", "NONE" , 4.3f , LocalDateTime.now(),"Veg", "BTM layout" , "Available" , 1);
//		rdi.addRestaurant(r);

//		MenuDaoImpl mdi = new MenuDaoImpl();
//		Menu m = new Menu(2,"Paneer65",230.0f,"Made up of paneer","None",false,2,4.5f);
//		mdi.addMenu(m);

	}

}
