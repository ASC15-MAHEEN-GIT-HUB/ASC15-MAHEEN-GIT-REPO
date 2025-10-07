package movies;

public class Movie {
    private String movieName;
    private String producedBy;
    private String directedBy;
    private int duration;
    private int year;
    private String category;
    private final String movieId;

    private static int moviesCount = 0;

    public Movie(String movieName, String producedBy) {
        if (movieName == null || producedBy == null) {
            throw new IllegalArgumentException("movieName and producedBy are mandatory.");
        }
        this.movieName = movieName;
        this.producedBy = producedBy;
        moviesCount++;
        this.movieId = movieName + "_" + moviesCount;
    }

    public Movie(String movieName, String producedBy, String directedBy, int duration, int year, String category) {
        this(movieName, producedBy);
        this.directedBy = directedBy;
        this.duration = duration;
        this.year = year;
        this.category = category;
    }

    public String getMovieId() {
        return movieId;
    }

    public static int getMoviesCount() {
        return moviesCount;
    }

    public String showDetails() {
        return "Movie ID: " + movieId +
                "\nName: " + movieName +
                "\nProduced By: " + producedBy +
                "\nDirected By: " + directedBy +
                "\nDuration: " + duration + " mins" +
                "\nYear: " + year +
                "\nCategory: " + category;
    }
}
