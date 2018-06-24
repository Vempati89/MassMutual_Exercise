Given(/^I am on the page$/) do
  visit(Exercise_values)
  sleep 3
end

When(/^I check (.*) on the screen$/) do |amounts|
  @amounts = on(Exercise_values).send("#{amounts}")
  on(Exercise_values).balance(@amounts)
end

Then(/^values on the screen are greater than zero$/) do
expect(on(Exercise_values).balance(@amounts)). to be > 0
end

When(/^I check for all balances$/) do
  @firstbal = on(Exercise_values).first_amount
  @secondbal = on(Exercise_values).second_amount
  @thirdbal = on(Exercise_values).third_amount
  @fourthbal = on(Exercise_values).fourth_amount
  @fifthbal = on(Exercise_values).fifth_amount
end

Then(/^Total balance is correct based on values listed on screen$/) do
  expect(on(Exercise_values).total_amount).to eq(@firstbal+@secondbal+@thirdbal+@fourthbal+@fifthbal)
end

Then(/^Total balance matches the sum of the values$/) do
  expect(on(Exercise_values).total_amount).to eq(@firstbal+@secondbal+@thirdbal+@fourthbal+@fifthbal)
end


Then(/^all the balances are formatted as currencies$/) do
  expect(@amounts).to match (/^\$[0-9][0-9\,]*(\.\d{1,2})?$|^\$?[\.]([\d][\d]?)$/)
end


When(/^I count for amounts on the screen$/) do |table|
  # table is a table.hashes.keys # => [:amount_1, :amount_2, :amount_4, :amount_5, :amount_6, :ttl_value]
  @total = 0
  for item in table
    field = item.to_s.gsub(":","")
    on(Exercise_values).send("#{field}").exists?
    @total = @total+1
  end
end

Then(/^I verify count of the amounts on the screen$/) do
  expect(@total).to eq 6
end