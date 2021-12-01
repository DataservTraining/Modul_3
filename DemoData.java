import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import java.util.function.UnaryOperator;

public class DemoData {
	public static List<Person> createDemoData() {
		final List<Person> persons = new ArrayList<>();
		persons.add(new Person("Michael", 44));
		persons.add(new Person("Barbara", 22, Gender.FEMALE));
		persons.add(new Person("Lili", 17, Gender.FEMALE));
		persons.add(new Person("Tom", 8));
		persons.add(new Person("Björn", 7));
		return persons;
	}

	public static List<String> createDemoNames() {
		final List<String> names = new ArrayList<>();
		names.add("   Max");
		names.add(""); // Leereintrag
		names.add("  Andy  ");
		names.add(" "); // potenziell auch ein "Leereintrag"
		names.add("Stefan");
		names.add(null);
		return names;
	}

	public static <E> void removeAll(final List<E> list,
										final Predicate<? super E> condition) {

		final Iterator<E> it = list.iterator();

		while (it.hasNext()) {
			if (condition.test(it.next())) {
				it.remove();
			}
		}
	}
	
	public static void printResult(final String text, final String value, 
									final UnaryOperator<String> op) {
			System.out.println(text + ": ’" + value + "’ -> ’" + op.apply(value) + "’");
	}
}
