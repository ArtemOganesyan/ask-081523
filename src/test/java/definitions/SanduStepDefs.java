package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;

import static support.TestContext.getDriver;

public class SanduStepDefs {
    @Given("AS open url")
    public void asOpenUrl() throws InterruptedException {
        getDriver().get("http://ask-stage.portnov.com/");
    }


    @Then("AS click on Register Now button")
    public void asClickOnRegisterNowButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Register Now')]/..")).click();
        Thread.sleep(2000);
        {
        }
    }}