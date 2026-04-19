<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="data.RoomData, model.Room"%>


<!doctype html>
<html>
<head>
<meta charset="UTF-8" />
<title>Room Details</title>
<link rel="icon" type="image/png" href="favicon.png" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/airbnbcereal@1.1.0/stylesheet.min.css" />
<link rel="stylesheet" href="style.css" />
</head>

<body>
	<!-- ================= HEADER ================= -->
	<jsp:include page="header.jsp">
		<jsp:param name="pageClass" value="room" />
	</jsp:include>

	<!-- ================= SECTION ================= -->
	<section class="listing">
		<div class="container">
			<!-- Title -->
			<h2>${room.name}</h2>

			<!-- Image Grid -->
			<div class="gallery">
				<div class="main-image">
					<img src="${room.images[0]}" alt="Main Image" />
				</div>

				<div class="side-images">
					<img src="${room.images[1]}" alt="Living Room" /> <img
						src="${room.images[2]}" alt="Bedroom" /> <img
						src="${room.images[3]}" alt="Kitchen" />
					<div class="overlay">
						<img src="${room.images[4]}" alt="Balcony" />
						<button class="show-all">
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16"
								aria-hidden="true" role="presentation" focusable="false"
								style="display: block; height: 16px; width: 16px; fill: currentcolor;">
                  <path fill-rule="evenodd"
									d="M3 11.5a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3zm5 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3zm5 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3zm-10-5a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3zm5 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3zm5 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3zm-10-5a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3zm5 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3zm5 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3z"></path>
                </svg>
							Show all photos
						</button>
					</div>
				</div>
			</div>

			<!-- Details -->
			<div class="details">
				<div class="left">
					<h3>${room.location}</h3>
					<p>${room.maxGuests} guests · ${room.bedrooms} bedroom ·
						${room.beds} bed · ${room.baths} bath</p>
					<p class="rating">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32"
							aria-hidden="true" role="presentation" focusable="false"
							style="display: block; height: 8px; width: 8px; fill: currentcolor;">
                <path fill-rule="evenodd"
								d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path>
              </svg>
						${room.rating} · <span>${room.reviewCount} reviews</span>
					</p>
				</div>

			</div>
		</div>


	</section>

	<!-- ================= SCRIPT ================= -->
	<script src="script.js"></script>
</body>
</html>
