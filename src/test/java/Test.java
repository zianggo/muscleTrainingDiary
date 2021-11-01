import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import java.time.LocalDate;

public class Test {
    public static void main(String[] args) {

        int[] monthDays = new int[42];
        LocalDate today = LocalDate.now();

        for(int i=0; i<monthDays.length; i++) {
            // 월요일은 1 일요일은 7
            int 요일을숫자로변환 = today.getDayOfWeek().getValue();
            int 달력에표시첫날 = 요일을숫자로변환 + (-1 * i);
            int 머슬캘린더에보여줄일짜 = today.minusDays(달력에표시첫날 + (-i)).getDayOfMonth();
            monthDays[i] = 머슬캘린더에보여줄일짜;

            // 한방
//            monthDays[i] = today.minusDays(today.getDayOfWeek().getValue() + (-1 * i)).getDayOfMonth();
        }

        JSONObject jsonObject = new JSONObject();

        for(int i=0; i< monthDays.length; i++)
            jsonObject.put(i, monthDays[i]);

        System.out.println(jsonObject);
    }
}
