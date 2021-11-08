import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class Test2 {
    public static void main(String[] args) {

        int[] days = new int[42];
        LocalDate today = LocalDate.now();

//        int month = LocalDate.now().getMonthValue();
        int month = 5;

        int year = LocalDate.now().getYear();

        LocalDate firstMonthDay = LocalDate.of(year, month,1);
        int weekInt = firstMonthDay.getDayOfWeek().getValue();
        LocalDate beforeMonthLastDay = firstMonthDay.minusDays(weekInt);
        for(int i = 0; i < days.length; i++) {
            days[i] = beforeMonthLastDay.plusDays(i).getDayOfMonth();
        }

        System.out.println(firstMonthDay.getMonth());
        System.out.println(LocalDate.now().format(DateTimeFormatter.ofPattern("yyyy/MM/dd")));
    }
}
