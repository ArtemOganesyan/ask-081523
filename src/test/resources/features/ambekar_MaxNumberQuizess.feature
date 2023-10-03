@LA-Quizzes
Feature: Validate Quizzes

  Background:
    Given LA login to the website
#        click on Quizzes
    When I click on element with xpath "//h5[contains(text(),'Quizzes')]"
#        wait for 3 seconds
    Then I wait for 3 sec
#        see List of Quizzes
    Then element with xpath "//h4[contains(text(),'List of Quizzes')]" should be displayed
#        click on Create New Quiz
    When I click on element with xpath "//*[contains(text(),'Create New Quiz')]/.."
#        see page Title of the Quiz
    Then I wait for 3 sec
    Then element with xpath "//*[@formcontrolname='name']" should be present

  @LA-NewQuiz
  Scenario: Create new Quiz

#       Type Title of the Quiz
    Then I type "LA-NewQuiz" into element with xpath "//*[@formcontrolname='name']"
#       add question
    Then I click on element with xpath "//*[contains(text(),'add_circle')]"
    Then I wait for 2 sec
#       select Question type as Textual
    Then I click on element with xpath "//*[contains(text(),'Textual')]/.."
#       Type a Question
    Then I type "What is QA" into element with xpath "//*[@formcontrolname='question']"
#       Save the question
    Then I click on element with xpath "//*[contains(text(),'Save')]/.."

  @LA-NewQuiz-Testdata
  Scenario Outline: Create new Quiz with multiple test data
    Then I type "<text>" into element with xpath "<xpath>"
    Then I click on element with xpath <xpath1>
    Then I wait for <sec> sec
    Then I click on element with xpath <xpath2>
    Then I type "<text1>" into element with xpath "<xpath3>"
    Then I click on element with xpath <xpath4>
    Examples:
      | text       | xpath                        | xpath1                               | sec | xpath2                               | text1      | xpath3                           | xpath4                            |
      | LA-NewQuiz1 | //*[@formcontrolname='name'] | "//*[contains(text(),'add_circle')]" | 2   | "//*[contains(text(),'Textual')]/.." | What is QA | //*[@formcontrolname='question'] | "//*[contains(text(),'Save')]/.." |
      | LA-NewQuiz2 | //*[@formcontrolname='name'] | "//*[contains(text(),'add_circle')]" | 2   | "//*[contains(text(),'Textual')]/.." | Tell me about yourself | //*[@formcontrolname='question'] | "//*[contains(text(),'Save')]/.." |

  @LA-MaxNumbersofQuestions
  Scenario: Validate maximum number of questions allowed per quiz.
    Then LA created 51 questions
    Then I click on element with xpath "//*[contains(text(),'Save')]/.."
