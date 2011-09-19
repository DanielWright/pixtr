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
  
  Scenario: Try to create a gallery without a title
    Given I have signed in with "photographer@example.com"
    When I go to the dashboard page
    And I follow "Create Gallery"
    When I fill in "Title" with ""
    When I press "Create Gallery"
    Then I should see "can't be blank"
    When I fill in "Title" with "Last night"
    And I press "Create Gallery"
    Then I should see "Gallery created successfully"
  
  Scenario: Try to access the create gallery page before logging in
    Given I am not signed in
    When I go to the new gallery page
    Then I should be on the sign in page
    And I should see "You must be signed in"
