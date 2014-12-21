When(/^I open automationpractice website$/) do
  @browser.goto "http://automationpractice.com"
end

And(/^click contact us$/) do
  @browser.link(text: "Contact us").click
end

Then(/^I contact the customer service with yml dataset "([^"]*)"$/) do |data_set_key|
  puts "Printing object repository...."
  puts OR

  data_set = data_yml_hash[data_set_key]

  puts "Printing current data set..."
  puts data_set

  @browser.select(id: OR['subject_heading_id']).select data_set['heading']
  @browser.text_field(id: OR['email_id']).set data_set['email']
  @browser.text_field(id: OR['order_reference_id']).set data_set['order_reference']
  @browser.text_field(id: OR['message_id']).set data_set['message']
  @browser.button(id: OR['submit_message_id']).click
end

Then(/^I contact the customer service with excel row "([^"]*)" dataset$/) do |row_index|
  puts "Printing object repository...."
  puts OR

  data_set=data_excel_hash('Sheet1',row_index)

  puts "Printing current data set..."
  puts data_set

  @browser.select(id: OR['subject_heading_id']).select data_set['heading']
  @browser.text_field(id: OR['email_id']).set data_set['email']
  @browser.text_field(id: OR['order_reference_id']).set data_set['order_reference']
  @browser.text_field(id: OR['message_id']).set data_set['message']
  @browser.button(id: OR['submit_message_id']).click
end