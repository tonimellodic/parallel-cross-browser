require 'watir'
require 'rspec/expectations'

When(/^I open google page$/) do
  @browser.goto('www.google.com')
end

Then(/^google page should be open$/) do
  expect(@browser.title).to be == 'Google'
end
