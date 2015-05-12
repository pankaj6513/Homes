class LeadSale
attr_accessor :search_field, :search_button
URLS = { :production => "http://www.homes.com/property/address-not-disclosed-fl-33333/id-51689124/" }
  
def initialize(browser)
@browser = browser
end

def method_missing(sym, *args, &block)
@browser.send sym, *args, &block
end

def visit
@browser.goto URLS[:production]
@browser.driver.manage.timeouts.page_load =120
end

def clickrequestbutton
@browser.send_keys :space
@browser.send_keys :space
@browser.send_keys :space
@browser.element(:xpath, "//*[@id='sticky']//button[contains(@class, 'agentCardLink')]/span").click
end

def agentsteakyheader
@browser.div(:xpath, "//div[contains(@id, 'agentContactForm')]").wait_until_present
end

def steakyheaderformname(name)
@name=name
@browser.text_field(:xpath, "//div[contains(@id, 'agentContactForm')]//label/input[contains(@id, 'name')]").set(@name)
end

def steakyheaderformemail(email)
@email=email
@browser.text_field(:xpath, "//div[contains(@id, 'agentContactForm')]//label/input[contains(@id, 'email')]").set(@email)
end

def steakyheaderformphone(phone)
@phone=phone
@browser.text_field(:xpath, "//div[contains(@id, 'agentContactForm')]//label/input[contains(@id, 'phone')]").set(@phone)
end

def steakysubmit
@browser.button(:xpath, "//div[contains(@id, 'agentContactForm')]//input[contains(@id, 'agent_card_submit')]").click
end

def myhomeagentcard
@browser.div(:id, "myHomesOverlayAgentCard").wait_until_present
end
=begin
def thankyou(expected)
@expected=expected
sleep 3
@browser.text.should include expected
end
=end

end