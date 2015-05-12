class LeadRentSteaky
attr_accessor :search_field, :search_button
URLS = { :production => "http://www.homes.com/property/91A9-west-main-street-fl-33333/id-223691263" }
  
def initialize(browser)
@browser = browser
end

def method_missing(sym, *args, &block)
@browser.send sym, *args, &block
end

def visit
#@browser.driver.manage.timeouts.page_load =300
@browser.goto URLS[:production]
puts 'Error Reason'

end

def RequestInfoButton
@browser.driver.manage.timeouts.page_load =300
@browser.element(:xpath, "/html/body/div[1]/div[1]/div[3]/div[3]/div[1]/div[2]/a[2]").click
end
def creditcheckbox
@browser.checkbox(:name, "moving_opt_in").set(false)
end
def ClickSubmitButton
@browser.button(:name, "agent_card_submit").click
end
def submit
@browser.button(:value, "Submit").click
end 
end