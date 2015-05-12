class LeadSaleUDP
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
@browser.select_list(:name, 'downPayment').select(downPayment)
end

def prequalifiedbutton
@browser.a(:id => 'mortLBFormButton').click
end
=begin
def selectcredit(creditscore)
@creditscore=creditscore
@browser.select_list(:name, 'creditscore').select(@creditscore)
end
=end
end