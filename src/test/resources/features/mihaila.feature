# This is my feature file

# Scenario
  @ask-functional
  Feature: Group code registration

  @ask-group-code-mo
  Scenario: Registration group code field allows min 1 char
    Given I open url "http://ask-stage.portnov.com/"
    Then I click on element with xpath "//span[contains(text(),'Register Now')]"
    Then I wait for element with xpath "//h4[contains(text(),'Registration')]" to be present
    Then I type "Olesea" into element with xpath "//*[@formcontrolname='firstName']"
    Then I type "Mihaila" into element with xpath "//*[@formcontrolname='lastName']"
    Then I type "mihailaolesea5@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    Then I type "A" into element with xpath "//*[@formcontrolname='group']"
    Then I wait for 2 sec
    Then I type "olesea11" into element with xpath "//*[@formcontrolname='password']"
    Then I type "olesea11" into element with xpath "//*[@formcontrolname='confirmPassword']"
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//h4[contains(text(),'You have been Registered.')]" to be present