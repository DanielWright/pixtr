Given /^(?:|I )am not signed in$/ do
  steps %{
    Given I am on the home page
    Then I should not see "Sign out"
  }
end
