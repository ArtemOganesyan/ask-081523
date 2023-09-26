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


    @LA-MaxNumbersofQuestions
    Scenario: Validate maximum number of questions allowed per quiz.
      Then LA created 51 questions
      Then I click on element with xpath "//*[contains(text(),'Save')]/.."
