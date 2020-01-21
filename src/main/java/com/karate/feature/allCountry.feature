Feature: Check the retured countries by API 
	Background:
	* url 'https://restcountries.eu'
	* header Accept = 'application/json'
	
	Scenario: Get list of all the countries
		Given path '/rest/v2/all'
		When method get
		Then status 200
