Feature: Create gallery
  As a photographer
  I can create a gallery with a title
  So that I have a place to upload pictures

  Scenario: Create a valid gallery
    Given I have signed in with "photographer@example.com"
    When I go to the dashboard page
    And I follow "Create Gallery"
    Then I should see "Create a new gallery"
    When I fill in "Title" with "My sweet vacation"
    And I press "Create Gallery"
    Then I should see "Gallery created successfully"
    And I should see "My sweet vacation"
    And I should be on the gallery page for "My sweet vacation"
