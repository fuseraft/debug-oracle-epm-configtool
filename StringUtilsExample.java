//import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang.StringUtils;

public class StringUtilsExample {
    public static void main(String[] args) {
        String str1 = "";
        String str2 = "Hello, World!";

        System.out.println("Is str1 empty? " + StringUtils.isEmpty(str1));
        System.out.println("Is str2 empty? " + StringUtils.isEmpty(str2));
    }
}
