# encoding: utf-8
require 'rubygems'
require 'watir-webdriver'

Given(/^that I have navigated to the realestate\.com\.au site and am under the buy tab$/) do
  @browser = Watir::Browser.new :chrome
  @browser.goto("http://www.realestate.com.au/buy")
end

#This works
When(/^I enter "(.*?)", "(.*?)" into the Region Box$/) do |suburb, state|
  region_field = @browser.text_field(:id, 'where')
  region_field.exists?
  @region_value = suburb + ", " + state
  region_field.set(@region_value)
  
  #make sure that "include surrounding suburbs" is unchecked
  surrounding = @browser.checkbox(:id, "includeSurrounding")
  surrounding.exists?
  surrounding.click if surrounding.set?
end


#The property type dropdown checklist element was not found when addressed 
#as a dropdown list.  I have included an implementation using it as a 
#dropdown list.  It is commented out below.

#I was able to find a way to work around selecting from the dropdown
#by using direct knowledge of the element to be selected and its ID
When(/^Select "(.*?)" as the property type$/) do |property|
	property_select = @browser.checkbox(:id, "ddCb_propertyType_3")
	property_select.exists?
	property_select.set
	#As a dropdown list
	  #property_select = @browser.select_list(:name, 'propertytypegroup')
	  #property_select.exists?
	  #property_select.select(property)
end

#Same problem with Max Price as with property type, but I was unable to find
#a workaround
When(/^set the Max\. Price to "(.*?)"$/) do |price|
  #As a dropdown list
	  #max_price = @browser.select_list(:name, 'propertytypegroup')
	  #max_price.exists?
	  #max_price.select(price)
end

When(/^I click the search button$/) do 
  @browser.button(:id, "searchBtn").exists?
  @browser.button(:id, "searchBtn").click
end

Then(/^the listing number results are in the proper State and suburb\.$/) do
  @browser.text.include? "Results for properties in " + @region_value
  @browser.close
end
