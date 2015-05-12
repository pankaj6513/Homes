class LeadSaleSRP
attr_accessor :search_field, :search_button
URLS = { :production => "http://www.homes.com/for-sale/your-hometown-fl/?orderby=price desc" }
  
def initialize(browser)
@browser = browser
end

def method_missing(sym, *args, &block)
@browser.send sym, *args, &block
end

def visit
@browser.goto URLS[:production]
puts 'Error Reason'
@browser.driver.manage.timeouts.page_load =120
end

def RequestInfoButton
@browser.driver.manage.timeouts.page_load =120
@browser.element(:xpath, "/html/body/div[1]/div[1]/div[3]/div[3]/div[1]/div[2]/a[2]").click
end

def AgentContactForm
@browser.div(:id, "agentContactForm").wait_until_present
end

def ClickSubmitButton
@browser.button(:name, "agent_card_submit").click
end
def selectcredit(creditscore)
@creditscore=creditscore
@browser.select_list(:name, 'creditscore').select(@creditscore)
end

def confirmpopup
 @browser.div(:id, "leadConfirm").wait_until_present
end

def historydropdown(bankruptcyHistory)
@browser.select_list(:name, 'bankruptcyHistory').select(bankruptcyHistory)
end

def downpaymentdropdown(downPayment)
@downPayment=downPayment
@browser.select_list(:name, 'downPayment').select(@downPayment)
end

def firstname(name)
@name = name
@browser.text_field(:name, "name").set(@name)
end

def phonenumber(phone)
@phone = phone
@browser.text_field(:name, "phone").set(phone)
end

def emailaddress(email)
@email = email
@browser.text_field(:name, "email").set(@email)
end
def prequalifiedbutton
@browser.a(:id => 'mortLBFormButton').click
end

def agentcard
@browser.div(:id, "myHomesOverlayAgentCard").wait_until_present
end

def checkbox
@browser.checkbox(:id, "mortgage_opt_in").set
end

def sendbutton
@browser.button(:name, "_submit").click
end

def uncheckbox
@browser.checkbox(:name, "mortgage_opt_in").set(false)
end

=begin
def selectcredit(creditscore)
@creditscore=creditscore
@browser.select_list(:name, 'creditscore').select(@creditscore)
end
=end
end