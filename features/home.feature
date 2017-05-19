Feature: Home
	I as a movies fan
	want to be able to
	view a list of current popular movies and	read more about some movie

@home
Scenario: Verify the infinite scroll at Home screen
  Given that I open the app
  When I scroll down any times at home
  Then I see the movies
