class FrcRentLeadUDP
attr_accessor :search_field, :search_button
URLS = { :production => "http://www.homes.com/property/christina-lakes-test-minot-nd-58701/id-190757880/" }
  
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
def emailaddress(emailAddress)
@browser.text_field(:name, "emailAddress").set(emailAddress)
end

end