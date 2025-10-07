package movies;

public class InternationalMovie extends Movie {
    private String country;
    private String language;

    public InternationalMovie(String movieName, String producedBy, String directedBy, int duration, int year, String category,
                              String country, String language) {
        super(movieName, producedBy, directedBy, duration, year, category);
        this.country = country;
        this.language = language;
    }

    @Override
    public String showDetails() {
        return super.showDetails() +
                "\nCountry: " + country +
                "\nLanguage: " + language;
    }
}
