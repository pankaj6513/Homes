class LeadRentSRP
attr_accessor :search_field, :search_button
URLS = { :production => "http://www.homes.com/rentals/your-hometown-fl/?orderby=beds%20desc" }
  
def initialize(browser)
@browser = browser
end

def method_missing(sym, *args, &block)
@browser.send sym, *args, &block
end

def visit
@browser.goto URLS[:production]
puts 'Error Reason'
@browser.driver.manage.timeouts.page_load =60
end

def creditrepairform
@browser.div(:id, "myHomesOverlayAgentCard").wait_until_present
end

def creditcheckbox
@browser.checkbox(:name, "moving_opt_in").set(false)
end

def submit
@browser.button(:value, "Submit").click
end 
def leadconfirmation
@browser.div(:id, "leadConfirm").wait_until_present
end 
def ClickSubmitButton
@browser.button(:name, "agent_card_submit").click
end
def credit_repair_form
@browser.div(:id, "myHomesOverlayPropertyLeadSuccessMoving").wait_until_present
end

end