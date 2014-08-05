Feature: cucumber
	In order to run cucumber # Why does he/she care?
	As a user #Who is using the system? 
	I want to install and config cucumber on the system # What is he/she doing?

	Scenario:  cucumber installed
	When I run `cucumber --version`
    Then it should pass with:
      """
      1.3.16
      """
      
	Scenario:  aruba installed
	When I run `gem list aruba`
    Then the output should contain:
      """
      aruba
      """

