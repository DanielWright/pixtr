Then /^(?:|I )should see a list of galleries$/ do
  page.should have_css("div#all-galleries")
end

Then /^I should see a gallery titled "([^"]*)" by "([^"]*)"$/ do |title, email|
  page.should have_css("div.one-gallery > h3:contains('#{title}') ~ div.author:contains('#{email}')")
end
