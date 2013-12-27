
Feature: "When I go to the realestate.com.au site and search for an apartment to buy, in Richmond, VIC, with a maximum price of 500,000, I expect to see results that fit the search criteria."

  Scenario: Searching for an apartment in Richmond, VIC
    Given that I have navigated to the realestate.com.au site and am under the buy tab
    When I enter "Richmond", "VIC" into the Region Box
    Then the listing number results are in the proper State and suburb.