@Login
Feature: Hero App Login Functionality

  Background:
    Given user navigates to "http://the-internet.herokuapp.com/"
    When user clicks on "Form Authentication" link

  #Scenario: Validate form authentication page invalid password message
  #  And user enters username as "johndoe" and password as "abc123"
  #  And user clicks on "Login" button
  #  Then user should see a message starts with "Your password is invalid!"
  #
  #Scenario: Validate form authentication page invalid password message
  #  And user enters username as "tomsmith" and password as "xyz123"
  #  And user clicks on "Login" button
  #  Then user should see a message starts with "Your password is invalid!"
  #
  #Scenario: Validate form authentication page successful login message
  #  And user enters username as "tomsmith" and password as "SuperSecretPassword!"
  #  And user clicks on "Login" button
  #  Then user should see a message starts with "You logged into a secure area!"

  Scenario Outline: Validate form authentication page
    And user enters username as "<username>" and password as "<password>"
    And user clicks on "Login" button
    Then user should see a message starts with "<message>"
    Examples:
      | username | password             | message                        |
      |          |                      | Your username is invalid!      |
      | johndoe  | abcd1234             | Your username is invalid!      |
      | tomsmith | 12345                | Your password is invalid!      |
      | tomsmith | SuperSecretPassword  | Your password is invalid!      |
      | tomsmith | SuperSecretPassword! | You logged into a secure area! |