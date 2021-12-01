import java.time.LocalDate;
import java.util.Objects;

public class Person {
	private final String name;
	private final int age;
	private final Gender gender;
	private String favoriteColor;
	private String city;
	private LocalDate birthday;

	public Person(final String name, final int age) {
		this(name, age, Gender.MALE);
	}

	public Person(final String name, final int age, final String city) {
		this(name, age, Gender.MALE, noFavoriteColor(), city);
	}

	public Person(final String name, final int age, final Gender gender) {
		this(name, age, gender, noFavoriteColor(), noCity());
	}

	public Person(final String name, final int age, final Gender gender, final String favoriteColor,
			final String city) {
		Objects.requireNonNull(name, "name must not be null");
		Objects.requireNonNull(gender, "gender must not be null");
		Objects.requireNonNull(favoriteColor, "favoriteColor must not be null");
		Objects.requireNonNull(city, "city must not be null");
		this.name = name;
		this.age = age;
		this.gender = gender;

		this.favoriteColor = favoriteColor;
		this.city = city;
	}

	public Person(String name, int age, Gender gender, String city) {
		this(name, age, gender, noFavoriteColor(), city);
	}

	public Person(String name, LocalDate birthday) {
		this(name, 0, Gender.MALE, noFavoriteColor(), noCity());
		this.birthday = birthday; 
	}

	private static String noFavoriteColor() {
		return "";
	}

	private static String noCity() {
		return "";
	}

	public String getName() {
		return name;
	}

	public int getAge() {
		return age;
	}

	public Gender getGender() {
		return gender;
	}

	public String getFavoriteColor() {
		return favoriteColor;
	}

	public boolean isAdult() {
		return age >= 18;
	}
	
	

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public LocalDate getBirthday() {
		return birthday;
	}

	public void setBirthday(LocalDate birthday) {
		this.birthday = birthday;
	}

	public boolean livesIn(final String city) {
		return Objects.equals(this.city, city);
	}

	@Override
	public String toString() {
		return "Person [name=" + name + ", age=" + age + ", gender=" + gender + ", favoriteColor=" + favoriteColor
				+ ", city=" + city + "]";
	}

	
}
