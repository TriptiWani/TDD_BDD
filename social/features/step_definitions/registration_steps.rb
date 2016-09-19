Given(/^I am on the sign up page$/) do
  # pending # Write code here that turns the phrase above into concrete actions
  visit '/users/sign_up'
end

When(/^I sign up as a user with email "([^"]*)"$/) do |email|
  fill_in 'Email', :with => email
  fill_in 'Password', :with => 'chicken1'
  fill_in 'Password confirmation', :with => 'chicken1'
  click_button 'Sign up'
end

Then(/^I should have an account$/) do
  assert_equal 1, User.count
end

Given(/^I am on the login pages$/) do
  visit '/users/sign_in'
end

Given(/^I have already registered as "([^"]*)"$/) do |email|
  User.create :email => email, :password => 'chicken1' , :password_confirmation => 'chicken1'
end

When(/^I login with correct email "([^"]*)"$/) do |email|
  fill_in 'Email', :with => email
  fill_in 'Password', :with => 'chicken1'
  click_button 'Log in'
end

Then(/^I should see "([^"]*)"$/) do |expected|
  assert page.has_content? expected
end
