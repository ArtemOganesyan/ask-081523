package definitions;

import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class MZStepdefs {
    @Then("MZ type {string} into element with xpath {string}")
    public void mzTypeIntoElementWithXpath(String text, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
    }


    @Then("MZ click on element with xpath {string}")
    public void mzClickOnElementWithXpath(String xpath) {
        getDriver().findElement(By.xpath(xpath)).click();
    }
}
