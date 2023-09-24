package definitions;

import cucumber.api.java.en.Given;
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


}

