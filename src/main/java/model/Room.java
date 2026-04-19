package model;

import java.util.List;

//Room.java
public class Room {
	private int id;
	private String name;
	private String location;
	private double price;
	private int nights;
	private int maxGuests;
	private double rating;
	private String description;
	private int bedrooms;
	private int beds;
	private int baths;
	private int reviewCount;
	private List<String> images;

	public Room(int id, String name, String location, double price, int nights, int maxGuests, double rating,
			String description, int bedrooms, int beds, int baths, int reviewCount, List<String> images) {
		this.id = id;
		this.name = name;
		this.location = location;
		this.price = price;
		this.nights = nights;
		this.maxGuests = maxGuests;
		this.rating = rating;
		this.description = description;
		this.bedrooms = bedrooms;
		this.beds = beds;
		this.baths = baths;
		this.reviewCount = reviewCount;
		this.images = images;
	}

	// Getters
	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getLocation() {
		return location;
	}

	public double getPrice() {
		return price;
	}
	
	public int getNights() {
		return nights;
	}


	public int getMaxGuests() {
		return maxGuests;
	}

	public double getRating() {
		return rating;
	}

	public String getDescription() {
		return description;
	}

	public int getBedrooms() {
		return bedrooms;
	}

	public int getBeds() {
		return beds;
	}

	public int getBaths() {
		return baths;
	}

	public int getReviewCount() {
		return reviewCount;
	}

	public List<String> getImages() {
		return images;
	}
}