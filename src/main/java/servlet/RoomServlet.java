package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Room;

import java.io.IOException;
import java.util.List;

import data.RoomData;

/**
 * Servlet implementation class RoomServlet
 */
@WebServlet("/RoomServlet")
public class RoomServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String idParam = request.getParameter("id");

        if (idParam != null) {
            // Single room detail
            int id = Integer.parseInt(idParam);
            Room room = RoomData.getRoomById(id);
            request.setAttribute("room", room);
            request.getRequestDispatcher("/room.jsp").forward(request, response);
        } else {
            // Homepage — load all rooms
            List<Room> rooms = RoomData.getAllRooms();
            request.setAttribute("rooms", rooms);
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
    }
}