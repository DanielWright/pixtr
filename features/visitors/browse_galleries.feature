Feature: Browse all galleries
  As a visitor
  In order to view pictures on the site
  I can browse all galleries

  Scenario: Viewing galleries on the homepage
    Given the following galleries exist:
      | title               | user                    |
      | My sweet vacation   | email: user@example.com |
      | Some other gallery  | email: nerd@baller.com  | 
    And I am not signed in
    When I go to the homepage
    Then I should see "All galleries"
    And I should see a list of galleries
    And I should see a gallery titled "My sweet vacation" by "user@example.com"
    And I should see a gallery titled "Some other gallery" by "nerd@baller.com"
