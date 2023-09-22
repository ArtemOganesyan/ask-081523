/* AS 9/21/2023 */
package definitions;

import cucumber.api.java.en.Then;
import org.openqa.selenium.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import static org.assertj.core.api.Assertions.*;
import static support.TestContext.getDriver;
import org.openqa.selenium.WebElement;

public class SharoikoStepDefs {
    @Then("AS validate the date with xpath {string}")
    public void iValidateTheLocalTimeWithXpath(String xpath) {
        WebElement we = getDriver().findElement(By.xpath(xpath));
        String updated_field = we.getText().substring(0, we.getText().length() - 3);
        System.out.println(updated_field);
        String date_format = "MM/dd/yyyy HH:mm";
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern(date_format);
        System.out.println(LocalDateTime.now().format(formatter));
        String expected = LocalDateTime.now().format(formatter).toString();
        assertThat(updated_field).isEqualTo(expected);
    }
}

