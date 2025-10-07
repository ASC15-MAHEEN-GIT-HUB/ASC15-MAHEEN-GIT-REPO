import java.util.ArrayList;
import java.util.List;
import java.time.LocalDate;
import java.time.LocalTime;

public class Meeting_Room {

    static class MeetingRoom {
        String roomId;
        int capacity;
        int floor;

        public MeetingRoom(String roomId, int capacity, int floor) {
            this.roomId = roomId;
            this.capacity = capacity;
            this.floor = floor;
        }

        public void displayInfo() {
            System.out.println("Room ID: " + roomId + ", Capacity: " + capacity + ", Floor: " + floor);
        }
    }

    static class ZoomMeetingRoom extends MeetingRoom {
        String zoomDeviceId;
        String zoomAccountId;

        public ZoomMeetingRoom(String roomId, int capacity, int floor, String zoomDeviceId, String zoomAccountId) {
            super(roomId, capacity, floor);
            this.zoomDeviceId = zoomDeviceId;
            this.zoomAccountId = zoomAccountId;
        }

        @Override
        public void displayInfo() {
            super.displayInfo();
            System.out.println("Zoom Device ID: " + zoomDeviceId + ", Zoom Account ID: " + zoomAccountId);
        }
    }

    static class Booking {
        String employeeId;
        LocalDate date;
        LocalTime time;
        int duration; // in minutes
        MeetingRoom room;

        public Booking(String employeeId, LocalDate date, LocalTime time, int duration, MeetingRoom room) {
            this.employeeId = employeeId;
            this.date = date;
            this.time = time;
            this.duration = duration;
            this.room = room;
        }

        public void displayBooking() {
            System.out.println("Booking Details:");
            System.out.println("Employee ID: " + employeeId);
            System.out.println("Date: " + date);
            System.out.println("Time: " + time);
            System.out.println("Duration: " + duration + " mins");
            room.displayInfo();
        }
    }

    public static void main(String[] args) {

        MeetingRoom room1 = new MeetingRoom("1", 10, 2);

        ZoomMeetingRoom room2 = new ZoomMeetingRoom("2", 20, 5, "DEV123", "zoom@company.com");

        Booking booking1 = new Booking("EMP1", LocalDate.of(2025, 9, 26), LocalTime.of(10, 0), 60, room1);
        Booking booking2 = new Booking("EMP2", LocalDate.of(2025, 9, 26), LocalTime.of(11, 30), 45, room2);

        List<Booking> bookings = new ArrayList<>();
        bookings.add(booking1);
        bookings.add(booking2);

        LocalDate searchDate = LocalDate.of(2025, 9, 26);
        System.out.println("Bookings for date: " + searchDate);
        for (Booking booking : bookings) {
            if (booking.date.equals(searchDate)) {
                booking.displayBooking();
                System.out.println("-------------------------");
            }
        }
    }
}
