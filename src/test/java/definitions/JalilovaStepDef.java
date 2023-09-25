// Created by Saadat Jalilova (09.22.2023)
package definitions;

        import cucumber.api.java.en.And;
        import cucumber.api.java.en.Given;
        import cucumber.api.java.en.Then;
        import org.openqa.selenium.*;

        import static org.assertj.core.api.Assertions.*;
        import static support.TestContext.getDriver;

public class TestPredf {
    @Given("SJ open ask-stage url")
    public void OpenaskUrl() {getDriver().get("http://ask-stage.portnov.com");
    }

    @Then("SJ type email")
    public void iTypeEmailElementWithXpath() {
        getDriver().findElement(By.xpath("//*[@formcontrolname='email']")).sendKeys("sadommm.90@gmail.com");
    }

    @Then("SJ type password")
    public void iTypePasswordIntoElementWithXpath() {
        getDriver().findElement(By.xpath("//*[@formcontrolname='password']")).sendKeys("123Abcd");
    }

    @Then("SJ click on Submit")
    public void SJClickOnSubmit() {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
    }


    @Then("SJ see the main menu")
    public void SJelementWithXpathShouldBeDisplayed() {
        By byElement = By.xpath("//mat-sidenav/ac-side-menu//p[contains(text(), 'TEACHER')]");
        WebElement element = getDriver().findElement(byElement);
        Boolean isDisplayed =  element.isDisplayed();
        assertThat(isDisplayed).isTrue();
    }

    @Then("SJ click on element with xpath {string}")
    public void iClickOnElementWithXpathOther(String xpath) {
        getDriver().findElement(By.xpath(xpath)).click();
    }

    @Then("SJ click on Quizzes")
    public void iClickOnQuizzes() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
    }

    @Then("^SJ type \"([^\"]*)\" into element with xpath \"([^\"]*)\"$")
    public void iTypeIntoElementWithXpath(String text, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
    }

    @And("^SJ wait for (\\d+) sec$")
    public void iWaitForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }
