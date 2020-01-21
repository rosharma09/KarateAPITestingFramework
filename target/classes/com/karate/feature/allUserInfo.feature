Feature: Get userInfo API
	
	Background:
	* url 'https://gorest.co.in'
	* header Authorization = 'Bearer dukCseb_1Y0P822I-fBZ6AWmnbdIfGe9fScp'
	
		Scenario: To get the userinfo using the given username
		
		Given path '/public-api/users'
		And param first_name = 'john'
		And param status = 'active'
		When method get
		Then status 200
				
		#we can also define assertions in out feature file

		And def userInfoResponse = response
		Then match userInfoResponse.result[*].first_name contains ["John"]