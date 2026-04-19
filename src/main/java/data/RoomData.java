package data;

import model.Room;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class RoomData {

	private static final List<Room> rooms = new ArrayList<>();

	static {
		rooms.add(new Room(0, "Sky Office Dark (NO Loadshedding)", "Cape Town, South Africa", 89.00, 2, 2, 4.87,
				"Entire condo in Cape Town, South Africa. A stunning dark-themed sky office with guaranteed no loadshedding. Perfect for remote workers and travelers seeking comfort and reliability.",
				2, 1, 1, 160, Arrays.asList("https://images.unsplash.com/photo-1505693416388-ac5ce068fe85", // modern
																											// room
						"https://images.unsplash.com/photo-1493809842364-78817add7ffb", // workspace
						"https://images.unsplash.com/photo-1502672260266-1c1ef2d93688", // bedroom
						"https://images.unsplash.com/photo-1484154218962-a197022b5858", // kitchen
						"https://images.unsplash.com/photo-1470770841072-f978cf4d019e" // city night
				)));

		rooms.add(new Room(1, "Ocean View Apartment", "Lagos, Nigeria", 120.00, 3, 4, 4.65,
				"Spacious ocean-view apartment in Lagos with modern amenities and a relaxing atmosphere.", 3, 2, 2, 98,
				Arrays.asList("https://images.unsplash.com/photo-1505691938895-1758d7feb511",
						"https://images.unsplash.com/photo-1507089947368-19c1da9775ae",
						"https://images.unsplash.com/photo-1560448204-e02f11c3d0e2",
						"https://images.unsplash.com/photo-1494526585095-c41746248156",
						"https://images.unsplash.com/photo-1486308510493-aa64833637b4")));

		rooms.add(new Room(2, "Cozy Studio Retreat", "Nairobi, Kenya", 55.00, 1, 2, 4.32,
				"Minimalist studio perfect for short stays and solo travelers.", 1, 1, 1, 45,
				Arrays.asList("https://images.unsplash.com/photo-1522708323590-d24dbb6b0267",
						"https://images.unsplash.com/photo-1554995207-c18c203602cb",
						"https://images.unsplash.com/photo-1507089947368-19c1da9775ae",
						"https://images.unsplash.com/photo-1560448204-603b3fc33ddc",
						"https://images.unsplash.com/photo-1493666438817-866a91353ca9")));

		rooms.add(new Room(3, "Luxury Penthouse Suite", "Dubai, UAE", 350.00, 5, 6, 4.95,
				"Experience luxury in this high-rise penthouse with panoramic skyline views.", 4, 4, 3, 210,
				Arrays.asList("https://images.unsplash.com/photo-1501183638710-841dd1904471",
						"https://images.unsplash.com/photo-1494526585095-c41746248156",
						"https://images.unsplash.com/photo-1505691938895-1758d7feb511",
						"https://images.unsplash.com/photo-1502005229762-cf1b2da7c5d6",
						"https://images.unsplash.com/photo-1479839672679-a46483c0e7c8")));

		rooms.add(new Room(4, "Mountain Cabin Escape", "Aspen, USA", 200.00, 4, 5, 4.78,
				"Rustic cabin surrounded by mountains, ideal for nature lovers.", 3, 3, 2, 134,
				Arrays.asList("https://images.unsplash.com/photo-1449157291145-7efd050a4d0e",
						"https://images.unsplash.com/photo-1475855581690-80accde3ae2b",
						"https://images.unsplash.com/photo-1505693416388-ac5ce068fe85",
						"https://images.unsplash.com/photo-1505691723518-36a5ac3be353",
						"https://images.unsplash.com/photo-1469474968028-56623f02e42e")));

		rooms.add(new Room(5, "Modern City Loft", "London, UK", 175.00, 2, 3, 4.50,
				"Stylish loft in central London with easy access to major attractions.", 2, 2, 1, 89,
				Arrays.asList("https://images.unsplash.com/photo-1493809842364-78817add7ffb",
						"https://images.unsplash.com/photo-1502672260266-1c1ef2d93688",
						"https://images.unsplash.com/photo-1484154218962-a197022b5858",
						"https://images.unsplash.com/photo-1494526585095-c41746248156",
						"https://images.unsplash.com/photo-1507089947368-19c1da9775ae")));

	}

	// Get all rooms
	public static List<Room> getAllRooms() {
		return rooms;
	}

	// Get room by index
	public static Room getRoomById(int id) {
		if (id >= 0 && id < rooms.size()) {
			return rooms.get(id);
		}
		return null;
	}
}