package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

import static support.TestContext.getDriver;

public class DjakupStepdefs {

    @When("DM type {string} into element with xpath {string}")
    public void dmTypeIntoElementWithXpath(String arg0, String arg1) {

    }

    @And("DM click on element with xpath {string}")
    public void dmClickOnElementWithXpath(String arg0) {
    }

    @Then("DM wait for element with xpath {string} to be present")
    public void dmWaitForElementWithXpathToBePresent(String arg0) {
        
    }

    @Then("DM click on element using JavaScript with xpath {string}")
    public void dmClickOnElementUsingJavaScriptWithXpath(String arg0) {
    }
}
