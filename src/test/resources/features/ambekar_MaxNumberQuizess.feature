@LA-Quizzes
  Feature: Validate Quizzes

    Background:
      Given LA login to the website

    @LA-NewQuiz
      Scenario: Create new Quiz
      # LA click on Quizzes
      When I click on element with xpath "//h5[contains(text(),'Quizzes')]"
      # LA wait for 3 seconds
      Then I wait for 3 sec
#       LA see List of Quizzes
      Then element with xpath "//h4[contains(text(),'List of Quizzes')]" should be displayed
#       LA click on Create New Quiz
      When I click on element with xpath "//*[contains(text(),'Create New Quiz')]/.."
#      Then LA see page Title of the Quiz
      Then I wait for 3 sec
      Then element with xpath "//*[@formcontrolname='name']" should be present
#      Then LA Type Title of the Quiz
      Then I type "LA-NewQuiz" into element with xpath "//*[@formcontrolname='name']"
#      And LA add question
      Then I click on element with xpath "//*[contains(text(),'add_circle')]"
      Then I wait for 2 sec
#      Then LA select Question type as Textual
      Then I click on element with xpath "//*[contains(text(),'Textual')]/.."
#      Then LA Type a Question
      Then I type "What is QA" into element with xpath "//*[@formcontrolname='question']"
#      And LA Save the question
      Then I click on element with xpath "//*[contains(text(),'Save')]/.."



