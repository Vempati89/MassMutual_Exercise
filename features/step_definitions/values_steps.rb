Given(/^I am on the page$/) do
  visit(Exercise_values)
  sleep 3
end

When(/^I check (.*) on the screen$/) do |values|
  @amounts = on(Exercise_values).send("#{values}")
  on(Exercise_values).balance(@amounts)
end

Then(/^values on the screen are greater than zero$/) do
expect on(Exercise_values).balance(@amounts). to be > 0
end

# Given(/^I on the page$/) do
#   visit(Quora_home)
#   sleep 3
# end
#
#
# When(/^I check (.*)$/) do |values|
#   @value = on(Quora_home).send("#{values}")
#   p @value
#   on(Quora_home).edit(@value)
# end

When(/^I check for all balances$/) do
  @firstbal = on(Exercise_values).first_amount
  @secondbal = on(Exercise_values).second_amount
  @thirdbal = on(Exercise_values).third_amount
  @fourthbal = on(Exercise_values).fourth_amount
  @fifthbal = on(Exercise_values).fifth_amount
end

Then(/^Total balance is correct based on values listed on screen$/) do
  expect (on(Exercise_values).total_amount). to eq (@firstbal+@secondbal+@thirdbal+@fourthbal+@fifthbal)
end