Feature: Functional tests for ASK

  Background: Open app
    Given I open url "http://ask-stage.portnov.com"

  @ask-registration-ASK
 Scenario: Successful register new user
    Then I click on element with xpath "//span[contains(text(),'Register Now')]"
    Then I should see page title as "Assessment Control @ Portnov"
    Then element with xpath "//*[@formcontrolname='firstName']" should be present
    Then I type "John" into element with xpath "//*[@formcontrolname='firstName']"
    Then I type "Smith" into element with xpath "//*[@formcontrolname='lastName']"
    Then I type "student11@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    When I type "123Abc" into element with xpath "//*[@formcontrolname='group']"
    When I type "12345" into element with xpath "//*[@formcontrolname='password']"
    When I type "12345" into element with xpath " //*[@formcontrolname='confirmPassword']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//mat-icon[contains(text(),'done')]/.." to be present
    And element with xpath "//mat-icon[contains(text(),'done')]/.." should be displayed


  @ask-registration-incorrect-AS
  Scenario Outline: Not allowed special characters

    Given I open url "http://ask-stage.portnov.com"
    Then I click on element with xpath "//span[contains(text(),'Register Now')]/.."
    Then I should see page title as "Assessment Control @ Portnov"
    Then element with xpath "//*[@formcontrolname='firstName']" should be present
    Then I type "%$#" into element with xpath "//*[@formcontrolname='firstName']"
    Then I type "Smith" into element with xpath "//*[@formcontrolname='lastName']"
    Then I type "student12@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    When I type "12345" into element with xpath "//*[@formcontrolname='group']"
    When I type "1234Abc" into element with xpath "//*[@formcontrolname='password']"
    When I type "1234Abc" into element with xpath "//*[@formcontrolname='confirmPassword']"
    And I wait for 3 sec
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//*[contains(text(), 'Should contain only latin characters')]/.." to be present
    And element with xpath "//*[contains(text(), 'Should contain only latin characters')]/.." should be displayed

    Examples:
      | xpath                                   | title                        | xpath1                            | text | xpath2                               | text1 | xpath3                              | text2               | xpath4                           | text3    | xpath5                           | text4 | xpath6                           | xpath7                                     | xpath8                   | xpath9                                                     |
      | //span[contains(text(),'Register Now')] | Assessment Control @ Portnov | //*[@formcontrolname='firstName'] | Jhon | //*[@formcontrolname='firstName']/.. | Smith | //*[@formcontrolname='lastName']/.. | student11@gmail.com | //*[@formcontrolname='email']/.. | 12345Abc | //*[@formcontrolname='group']/.. | 12345 | //*[@formcontrolname='password'] | //*[@formcontrolname='confirmPassword']/.. | //button[@type='submit'] | //mat-sidenav/ac-side-menu//p[contains(text(), 'STUDENT')] |

  @ask-registration-incorrect-AS
  Scenario Outline: Empty field
    Given I open url "http://ask-stage.portnov.com"
    Then I click on element with xpath "//span[contains(text(),'Register Now')]/.."
    Then I should see page title as "Assessment Control @ Portnov"
    Then element with xpath "//*[@formcontrolname='firstName']" should be present
    Then I type " " into element with xpath "//*[@formcontrolname='firstName']"
    Then I type "Smith" into element with xpath "//*[@formcontrolname='lastName']"
    Then I type "student12@gmail.com" into element with xpath "//*[@formcontrolname='email']"
    When I type "12345" into element with xpath "//*[@formcontrolname='group']"
    When I type "1234Abc" into element with xpath "//*[@formcontrolname='password']"
    When I type "1234Abc" into element with xpath "//*[@formcontrolname='confirmPassword']"
    And I wait for 3 sec
    Then I click on element with xpath "//button[@type='submit']"
    And I wait for element with xpath "//*[contains(text(), 'Should contain only latin characters')]/.." to be present
    And element with xpath "//*[contains(text(), 'Should contain only latin characters')]/.." should be displayed

    Examples:
      | xpath                                   | title                        | xpath1                            | text | xpath2                               | text1 | xpath3                              | text2               | xpath4                           | text3    | xpath5                           | text4 | xpath6                           | xpath7                                     | xpath8                   | xpath9                                                     |
      | //span[contains(text(),'Register Now')] | Assessment Control @ Portnov | //*[@formcontrolname='firstName'] | Jhon | //*[@formcontrolname='firstName']/.. | Smith | //*[@formcontrolname='lastName']/.. | student11@gmail.com | //*[@formcontrolname='email']/.. | 12345Abc | //*[@formcontrolname='group']/.. | 12345 | //*[@formcontrolname='password'] | //*[@formcontrolname='confirmPassword']/.. | //button[@type='submit'] | //mat-sidenav/ac-side-menu//p[contains(text(), 'STUDENT')] |
