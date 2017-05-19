When(/^I search a movie$/) do
  page(Search).touch_search
  page(Search).fill_search("Deadpool")
end

When(/^I search a movie with some word$/) do
  page(Search).touch_search
  page(Search).fill_search("Split")
end

When(/^I search a movie that not exist$/) do
  page(Search).touch_search
  page(Search).fill_search("qualquercoisa")
end

When(/^I scroll down any times$/) do
  page(Search).title_movie_validate_word
  page(Commom).scroll_down_search(15)
end

Then(/^I see the movie searched$/) do
  page(Search).title_movie_validate
end

Then(/^I see the movies searched with that word$/) do
  page(Search).title_movie_validate_word
  page(Commom).scroll_down_search(1)
  page(Search).title_movie_validate_word
  page(Commom).scroll_down_search(1)
  page(Search).title_movie_validate_word
end

Then(/^I dont see any return$/) do
  page(Search).blank_result_validate
end

Then(/^I see the movie$/) do
  page(Search).title_movie_validate_word
end
