# This is my new file

  # Scenario


@submissions-status-functional-feature-VP
Feature: Functional tests for Submissions-status

  @Sub-status-Passed-VP
  Scenario: Auto-graded status check-passed
    Given I open url "http://ask-stage.portnov.com"
    Then I type "germarki@gemarbola.link" into element with xpath "//*[@formcontrolname='email']"
    Then I type "Adgj0864" into element with xpath "//*[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//h5[contains(text(),'Submissions')]" to be present
    And element with xpath "//h5[contains(text(),'Submissions')]" should be displayed
    Then I wait for 5 sec
    Then I click on element with xpath "//h5[contains(text(),'Submissions')]"
    And I wait for 5 sec
    Then  I click on element with xpath " //div[contains(text(),'Automatically Graded')]"
    And I wait for 5 sec
    Then I click on element with xpath " //tbody/tr[7]/td[7]/a[1]/button[1]/span[1]"
    And I wait for 5 sec
    Then I click on element with xpath "//td[contains(text(),'Passing points / percentage:')]"
    And I wait for 5 sec
    Then I click on element with xpath "//div[contains(text(),'ASSESSMENT PASSED')]"
    And I wait for 5 sec
    Then I click on element with xpath "//span[contains(text(),'Cancel')]"
    And I wait for 5 sec
    And element with xpath "//tbody/tr[5]/td[5]/span[1]" should be displayed

  @Sub-status-Failed-VP
  Scenario: Auto-graded status check-failed
    Given I open url "http://ask-stage.portnov.com"
    Then I type "germarki@gemarbola.link" into element with xpath "//*[@formcontrolname='email']"
    Then I type "Adgj0864" into element with xpath "//*[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//h5[contains(text(),'Submissions')]" to be present
    And element with xpath "//h5[contains(text(),'Submissions')]" should be displayed
    Then I wait for 5 sec
    Then I click on element with xpath "//h5[contains(text(),'Submissions')]"
    And I wait for 5 sec
    Then  I click on element with xpath " //div[contains(text(),'Automatically Graded')]"
    And I wait for 5 sec
    Then I click on element with xpath "//tbody/tr[2]/td[7]/a[1]/button[1]/span[1]"
    And I wait for 5 sec
    Then I click on element with xpath "//td[contains(text(),'Passing points / percentage:')]"
    And I wait for 5 sec
    Then I click on element with xpath "//div[contains(text(),'ASSESSMENT FAILED')]"
    Then I click on element with xpath "//span[contains(text(),'Cancel')]"
    And I wait for 5 sec
    And element with xpath "//tbody/tr[2]/td[5]/span[1]" should be displayed


  @Sub-status-verification-check-Passed-VP
  Scenario: status verification check-passed
    Given I open url "http://ask-stage.portnov.com"
    Then I type "germarki@gemarbola.link" into element with xpath "//*[@formcontrolname='email']"
    Then I type "Adgj0864" into element with xpath "//*[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//h5[contains(text(),'Submissions')]" to be present
    And element with xpath "//h5[contains(text(),'Submissions')]" should be displayed
    Then I wait for 5 sec
    Then I click on element with xpath "//h5[contains(text(),'Submissions')]"
    And I wait for 5 sec
    Then  I click on element with xpath " //div[contains(text(),'Reviewed')]"
    And I wait for 5 sec
    Then I click on element with xpath " //tbody/tr[2]/td[8]/a[1]/button[1]/span[1]"
    And I wait for 5 sec
    Then I click on element with xpath " //div[contains(text(),'ASSESSMENT PASSED')]"
    And I wait for 5 sec
    Then I click on element with xpath " //span[contains(text(),'Save')]"
    And I wait for 5 sec
    And element with xpath "//tbody/tr[2]/td[6]/span[1]" should be displayed


  @Sub-status-verification-check-Failed-VP
  Scenario: status verification check-failed
    Given I open url "http://ask-stage.portnov.com"
    Then I type "germarki@gemarbola.link" into element with xpath "//*[@formcontrolname='email']"
    Then I type "Adgj0864" into element with xpath "//*[@formcontrolname='password']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//h5[contains(text(),'Submissions')]" to be present
    And element with xpath "//h5[contains(text(),'Submissions')]" should be displayed
    Then I wait for 5 sec
    Then I click on element with xpath "//h5[contains(text(),'Submissions')]"
    And I wait for 5 sec
    Then  I click on element with xpath " //div[contains(text(),'Reviewed')]"
    And I wait for 5 sec
    Then I click on element with xpath " //tbody/tr[6]/td[8]/a[1]/button[1]/span[1]"
    And I wait for 5 sec
    Then I click on element with xpath " //div[contains(text(),'ASSESSMENT FAILED')]"
    And I wait for 5 sec
    Then I click on element with xpath " //span[contains(text(),'Save')]"
    And I wait for 5 sec
    And element with xpath "//tbody/tr[6]/td[6]/span[1]" should be displayed


