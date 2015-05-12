class FrcRentLeadSRP
attr_accessor :search_field, :search_button
URLS = { :production => "http://www.homes.com/rentals/58701/apartments" }
  
def initialize(browser)
@browser = browser
end

def method_missing(sym, *args, &block)
@browser.send sym, *args, &block
end

def visit
@browser.driver.manage.timeouts.page_load =300
@browser.goto URLS[:production]
puts 'Error Reason'
end
def requestinfo_listing
@browser.element(:xpath, "/html/body/div[1]/div[1]/div[3]/div[4]/div[1]/div[2]/a[2]").click
end
def AgentContactForm
@browser.div(:id, "agentContactForm").wait_until_present
end
def emailfield(email)
@browser.text_field(:name, "froverlay_email").set(email)
end
def frcsubmit
@browser.button(:name, "for_rent_card_submit").click
end
def creditcheckbox
@browser.checkbox(:name, "moving_opt_in").set(false)
end
end