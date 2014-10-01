Feature: Newsletter form
  As a specific user
  So that I may create a new newsletter
  I want to have a link on my profile

  # credentials for newsletter creators is defined
  # in lib/agile_ventures.rb
  #
  Background:
    Given the following users exist
      | first_name  | last_name | email               |
      | Chesa       | Boudin    | chesa@example.com   |
      | Noob        | Nobody    | nobody@example.com  | 

  Scenario: There is a link displayed for Chesa
    Given I am logged in as "Chesa"
    And I am on my "Profile" page
    Then I should see link "New Newsletter"

  Scenario: There is no link displayed for Noob
    Given I am logged in as "Noob"
    And I am on my "Profile" page
    Then I should not see link "New Newsletter"
