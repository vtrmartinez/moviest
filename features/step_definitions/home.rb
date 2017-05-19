When(/^I scroll down any times at home$/) do
  page(Commom).scroll_down_home(15)
end

Then(/^I see the movies$/) do
  page(Home).movies_validate
end
