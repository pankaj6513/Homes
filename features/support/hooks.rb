require 'watir-webdriver'

Before do
@browser = ENV['BROWSER_TYPE']
puts @browser
 # @browser = Watir::Browser.new:firefox
 @browser = Watir::Browser.new ENV['BROWSER_TYPE']
 # @browser = Watir::Browser.new:chrome
 # @browser.driver.manage.timeouts.page_load =300
 @browser.driver.manage.timeouts.implicit_wait = 300
end

After do |scenario|
  @browser.screenshot.save ("testscreenshots/#{scenario.__id__}.png")
  embed("testscreenshots/#{scenario.__id__}.png", "image/png", "SCREENSHOT")
  @browser.close
end
