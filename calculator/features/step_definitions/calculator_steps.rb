Given(/^I have a calculator$/) do
  #pending # Write code here that turns the phrase above into concrete actions
  @calculator = Calculator.new
end

Given(/^I have the number (-?\d+)$/) do |num|
  #pending # Write code here that turns the phrase above into concrete actions
  @calculator << num
end

When(/^I add them together$/) do
  # pending # Write code here that turns the phrase above into concrete actions
  @result = @calculator.add
end

Then(/^I should see (-?\d+) on the terminal$/) do |num|
  # pending # Write code here that turns the phrase above into concrete actions
    assert_equal @result, num.to_f
end

When(/^I subtract them$/) do
  # pending # Write code here that turns the phrase above into concrete actions
  @result = @calculator.subtract
end

When(/^I multiply them$/) do
  # pending # Write code here that turns the phrase above into concrete actions
  @result = @calculator.multiply
end

When(/^I divide them$/) do
  # pending # Write code here that turns the phrase above into concrete actions
  @result = @calculator.divide
end
