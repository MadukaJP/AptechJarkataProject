<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="data.RoomData, model.Room, java.util.List"%>
<%
List<Room> rooms = RoomData.getAllRooms();
request.setAttribute("rooms", rooms);
%>

<!doctype html>
<html>
<head>
<meta charset="UTF-8" />
<title>Airbnb Clone</title>
<link rel="icon" type="image/png" href="favicon.png" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/airbnbcereal@1.1.0/stylesheet.min.css" />
<link rel="stylesheet" href="style.css" />
</head>

<body>
	<!-- ================= HEADER ================= -->
	<jsp:include page="header.jsp" />


	<!-- ================= SECTION ================= -->
	<div class="section-container">
		<div class="section">
			<div class="section-title">Popular homes in Cape Town</div>

			<div class="cards">
				<c:forEach var="room" items="${rooms}">
					<a href="RoomServlet?id=${room.id}" class="card">
						<div class="card-image">
							<img src="${room.images[0]}" />

							<div class="card-img-items">
								<div class="card-badge">Guest favorite</div>
								<div>
									<svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"
										aria-hidden="true" role="presentation" focusable="false"
										style="display: block; fill: rgba(0, 0, 0, 0.5); height: 24px; width: 24px; stroke: white; stroke-width: 2; overflow: visible;">
                  <path
											d="m15.9998 28.6668c7.1667-4.8847 14.3334-10.8844 14.3334-18.1088 0-1.84951-.6993-3.69794-2.0988-5.10877-1.3996-1.4098-3.2332-2.11573-5.0679-2.11573-1.8336 0-3.6683.70593-5.0668 2.11573l-2.0999 2.11677-2.0988-2.11677c-1.3995-1.4098-3.2332-2.11573-5.06783-2.11573-1.83364 0-3.66831.70593-5.06683 2.11573-1.39955 1.41083-2.09984 3.25926-2.09984 5.10877 0 7.2244 7.16667 13.2241 14.3333 18.1088z"></path>
                </svg>
								</div>
							</div>
						</div>

						<div class="card-body">
							<div class="card-title">${room.name}</div>
							<div class="card-price">
								<span>$${room.price } for 2 nights</span> · <span> <svg
										xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32"
										aria-hidden="true" role="presentation" focusable="false"
										style="display: block; height: 8px; width: 8px; fill: currentcolor;">
                  <path fill-rule="evenodd"
											d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path>
                </svg>
								</span>${room.rating}
							</div>
						</div>
					</a>
				</c:forEach>
			</div>
		</div>
	</div>

	<!-- ================= SCRIPT ================= -->
	<script src="script.js"></script>
</body>
</html>
