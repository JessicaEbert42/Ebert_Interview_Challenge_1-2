# encoding: utf-8
require 'rubygems'
require 'watir-webdriver'

Given(/^that I have navigated to the realestate\.com\.au site and am under the buy tab$/) do
  @browser = Watir::Browser.new :chrome
  @browser.goto("http://www.realestate.com.au/buy")
end

When(/^I enter "(.*?)", "(.*?)" into the Region Box$/) do |suburb, state|
  region_field = @browser.text_field(:id, 'where')
  region_field.exists?
  text_value = suburb + ", " + state
  region_field.set(text_value)
end

Then(/^the listing number results are in the proper State and suburb\.$/) do
  pending # express the regexp above with the code you wish you had
  @browser.close
end
