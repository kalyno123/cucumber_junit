@Google
  #Each feature file must have a Feature name
  #To declare all scenarios in the feature file with a tag, we can put tag on the top of Feature
Feature: Google Search Functionality

  #Background keyword groups the common steps and increases the code reusability in the feature files
  #Background keyword is used only if you have all scenarios in the feature starts with same steps
  #NOTE: Background can be used only for Before steps. You cannot use it for common After steps
  Background:
    Given user navigates to "https://www.google.com/"

  @Regression
  Scenario: Validate Google search
    When user searches for "Tesla" on Google
    Then user should see "Tesla" in the url
    And user should see "Tesla" in the title

  @Smoke
  Scenario: Validate Google search results
    When user searches for "Apple" on Google
    Then user should see results are more than 5000000