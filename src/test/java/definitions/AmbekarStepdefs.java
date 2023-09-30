package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.assertj.core.api.Assertions;
import static support.TestContext.getDriver;
public class AmbekarStepdefs {
    @Given("LA login to the website")
    public void laLoginToTheWebsite() throws InterruptedException {
        // navigate to the website
        getDriver().get("http://ask-stage.portnov.com");
        // Enter user email
        getDriver().findElement(By.xpath("//*[@formcontrolname='email']")).sendKeys("creativebug0@gmail.com");
        // Enter password
        getDriver().findElement(By.xpath("//*[@formcontrolname='password']")).sendKeys("abcd123");
        // Click on Submit button
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
        Thread.sleep(3000);
        // Check for successful login
        Assertions.assertThat(getDriver().findElement(By.xpath("//p[contains(text(),'TEACHER')]")).isDisplayed());
        Thread.sleep(3000);
    }


    @Then("LA created {int} questions")
    public void laCreatedQuestions(int steps) throws InterruptedException {
        getDriver().findElement(By.xpath("//*[@formcontrolname='name']")).sendKeys("LA-Max Questions per Quiz");
        getDriver().findElement(By.xpath("//*[contains(text(),'add_circle')]")).click();
        Thread.sleep(1000);

        for (int i=1; i<= steps; i++) {
            getDriver().findElement(By.xpath("//*[contains(text(),'Q"+i+"')]/../../..//*[contains(text(),'Textual')]/..")).click();
            Thread.sleep(500);
            getDriver().findElement(By.xpath("//*[contains(text(),'Q"+i+"')]/../../..//*[@formcontrolname='question']")).sendKeys("Question"+i);
            Thread.sleep(500);
            if (i != steps) {
                getDriver().findElement(By.xpath("//*[contains(text(),'add_circle')]")).click();
            }
            Thread.sleep(1000);

        }
    }
}

