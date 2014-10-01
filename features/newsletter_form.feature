Feature: Newsletter form
  As a specific user
  So that I may create a new newsletter
  I want to have a link on my profile

  Background:
    Given the following users exist
      | first_name  | last_name | email               |
      | Chesa       | Boudin    | chesa@example.com   |
      | Noob        | Nobody    | nobody@example.com  | 

  Scenario: There is a link displayed
    Given I am logged in as "Chesa"
    And I am on my "Profile" page
    Then "Create Newsletter" should be visible
