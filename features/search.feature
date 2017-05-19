Feature: Search
	I as a movies fan
	want to be able to
	search a list of current popular movies and	read more about some movie

@search
Scenario: Search a movie
  Given that I open the app
  When I search a movie
  Then I see the movie searched

@search
Scenario: Search a movie with some word
	Given that I open the app
	When I search a movie with some word
	Then I see the movies searched with that word

@search
Scenario: Search a movie that not exist
	Given that I open the app
	When I search a movie that not exist
	Then I dont see any return

@search
Scenario: Verify the infinite scroll at Search screen
  Given that I open the app
	When I search a movie with some word
  And I scroll down any times
  Then I see the movie
