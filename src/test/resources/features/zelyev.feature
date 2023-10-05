@predefined_ZMO
Feature: Group code in Review page
  Background: I open app
    Given I open url "http://ask-stage.portnov.com/"

  @Scenario1_ZMO
  Scenario: ASK081523-292 (group code should be visible)
  #Step 2  I type valid credentials
    Then I type "mattzelyev@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "Abc123" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element using JavaScript with xpath "//*[contains(text(),'Sign In')]/.."
    Then I wait for 4 sec
    Then I should see page title as "Assessment Control @ Portnov"

    # 3. Press "Submissions" button in Navigation bar

    Then I click on element using JavaScript with xpath "//h5[contains(text(),'Submissions')]"

  # 4. Press "Automatically Graded" tab
    Then I click on element using JavaScript with xpath "//div[contains(text(),'Automatically Graded')]"
    Then I wait for 3 sec
    # 5. Press "All groups" button.
    Then I click on element using JavaScript with xpath "//*[contains(text(),'All Groups')]"
    Then I wait for 2 sec

    #6. Press on "abcd" group code
    Then I click on element using JavaScript with xpath "//span[contains(text(),'abcd')]"
#  7. Press on "Review" button
    Then I click on element using JavaScript with xpath "(//*[contains(text(),'Review')])[2]"
    Then I wait for 3 sec
    # 8. Review group name
    Then element with xpath "//td[contains(text(),'Group:')]/.." should contain text "abcd"