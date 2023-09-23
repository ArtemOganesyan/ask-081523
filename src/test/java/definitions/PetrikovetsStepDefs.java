package definitions;

import cucumber.api.java.en.Then;
import org.assertj.core.api.Assertions;
import org.openqa.selenium.By;

import static org.hamcrest.MatcherAssert.assertThat;
import static support.TestContext.getDriver;

public class PetrikovetsStepDefs {
    @Then("YP execute test")
    public void iExecuteTest() throws InterruptedException {
        getDriver().get("http://ask-stage.portnov.com/");


    }

    @Then("YP type email")
    public void iTypeEmail() {
        getDriver().findElement(By.xpath("//*[@formcontrolname='email']")).sendKeys("amr916@byui.me");
    }

    @Then("YP type password")
    public void iTypePassword() {
        getDriver().findElement(By.xpath("//*[@formcontrolname='password']")).sendKeys("tester321");
    }

    @Then("YP click submit")
    public void iClickSubmit() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@type='submit']")).click();
        Thread.sleep(2000);
    }


    @Then("YP click quizzes")
    public void iClickQuizzes() throws InterruptedException {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        Thread.sleep(2000);
    }




    @Then("YP click create new quiz button")
    public void iClickCreateNewQuizButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-primary']/..//span[contains(text(),'Create New Quiz')]")).click();
        Thread.sleep(5000);
    }


    @Then("YP type title")
    public void iTypeTitle() throws InterruptedException {
        getDriver().findElement(By.xpath("//input[@placeholder='Title Of The Quiz *']")).sendKeys("ABC123");
        Thread.sleep(1000);
    }

    @Then("YP click add question")
    public void iClickAddQuestion() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-icon[contains(text(),'add_circle')]")).click();
        Thread.sleep(2000);
    }

    @Then("YP click single-choice")
    public void iClickSingleChoice() {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//*[contains(text(),'Single-Choice')]")).click();
    }



    @Then("YP click radio button")
    public void iClickRadioButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//*[contains(text(),'Q1')]/../../..//*//mat-radio-button[@class='mat-radio-button mat-accent']")).click();
        Thread.sleep(3000);
    }

    @Then("YP click second radio button")
    public void iClickSecondRadioButton() throws InterruptedException {
        getDriver().findElement(By.xpath("//mat-radio-group[2]/mat-radio-button")).click();
        Thread.sleep(2000);
    }




    @Then("YP click save")
    public void iClickSave() throws InterruptedException {
        getDriver().findElement(By.xpath("//span[contains(text(),'Save')]")).click();
        Thread.sleep(2000);
    }


    @Then("YP see error message")
    public void iSeeErrorMessage() throws InterruptedException {
        Assertions.assertThat(getDriver().findElements(By.xpath("//div[contains(text(),'Quiz is not completed')]"))).hasSize(1);
        Thread.sleep(2000);
    }

    @Then("YP type text in Option{int} with input {string}")
    public void iTypeTextInOptionWithInput(int opt, String input) throws InterruptedException {
        getDriver().findElement(By.xpath("(//*[contains(text(),'Q1')]/../../..//*[@formcontrolname='option'])["+ opt +"]")).sendKeys(input);
        Thread.sleep(2000);
    }


    @Then("YP type Question")
    public void iTypeQuestion() throws InterruptedException {
        getDriver().findElement(By.xpath("//textarea[@formcontrolname='question']")).sendKeys("Test09/21");
        Thread.sleep(2000);
    }


    @Then("YP click Add option {int} times")
    public void iClickAddOptionTimes(int count) throws Exception {

        for (int i = 1; i <= count; i++) {

            getDriver().findElement(By.xpath("//span[contains(text(),'Add Option')]")).click();
            Thread.sleep(100);
            iTypeTextInOptionWithInput(i + 2, "sbe");
            Thread.sleep(100);
            int totalOptions = i + 2;

            if(totalOptions > 15) {
                System.out.println("Only 15 options allowed");
                throw new Exception(i + 2 + " total options. Only 15 options allowed");
            }
        }
    }


    @Then("^YP click radio button with xpath \"([^\"]*)\"$")
    public void ypClickRadioButtonWithXpath(String xpath) throws InterruptedException {
        getDriver().findElement(By.xpath(xpath)).click();
        Thread.sleep(2000);
    }
}