package movies;

public class Main {

    public static void main(String[] args) {
        Movie m1 = new Movie("The Shawshank Redemption", "Castle Rock", "Frank Darabont", 142, 1994, "Drama");
        System.out.println(m1.getMovieId());

        Movie m2 = new Movie("The Godfather", "Paramount Pictures", "Francis Ford Coppola", 175, 1972, "Crime/Drama");
        System.out.println(m2.showDetails());

        SpecialMovie sm = new SpecialMovie("The Dark Knight", "Warner Bros.", "Christopher Nolan", 152, 2008, "Action",
                "Dolby Digital", "IMAX");
        System.out.println(sm.showDetails());

        InternationalMovie im = new InternationalMovie("Parasite", "Barunson E&A", "Bong Joon-ho", 132, 2019, "Thriller",
                "South Korea", "Korean");
        System.out.println(im.showDetails());

        System.out.println("Total Movies Created: " + Movie.getMoviesCount());
    }
}
