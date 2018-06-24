require 'watir'
require 'data_magic'
# include DataMagic

Before do |scenario|

  puts "Running: #{scenario.name}" + ", " + "Scenario started at: " + currenttimestamp
  # DataMagic.load_for_scenario(scenario)
  @browser = Watir::Browser.new :chrome
  @browser.window.maximize
  @browser.goto 'https://www.exercise1.com/values'
  # @browser.goto 'https://www.quora.com/'
end

AfterStep do
  encoded_img = @browser.driver.screenshot_as(:base64)
  embed("data:image/png;base64,#{encoded_img}",'image/png')
end


After do |scenario|
  if scenario.failed?
    saveScreenShot
    puts "Scenario failed"
    @browser.close
    @browser.alert.ok if @browser.alert.present?
    end
  @browser.close
end