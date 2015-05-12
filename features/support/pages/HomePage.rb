class HomePage
attr_accessor :search_field, :search_button
#URLS = { :production => "http://www.homes.com/for-sale/norfolk-va/" }
URLS = { :production => "http://www.homes.com/" }

def initialize(browser)
@browser = browser
@search_field  = @browser.text_field(:id => "listing-location")
@search_button = @browser.button(:value => "Search")
end

def method_missing(sym, *args, &block)
@browser.send sym, *args, &block
end
  
def clear_cookies
@browser.clear_cookies
end

def visit
@browser.goto URLS[:production]
end
  
def selectrent
@browser.div(:xpath,  '//*[@id="search"]//div[@class="title"]').click
@browser.span(:xpath, '//*[@data-value="FOR RENT"]/span').wait_until_present
@browser.span(:xpath, '//*[@data-value="FOR RENT"]/span').click
end
  
def search(country)
@browser.text_field(:name => "location").set(country)
end
  
def title(title)
@browser.div(:xpath,title).click
end
    
def wait_untill(wait_untill)
@browser.span(:xpath,wait_untill).wait_until_present
end
  
def click(click_path)
@browser.span(:xpath,click_path).click
end

def submit
@search_button = @browser.button(:value => "Search").click
@srp = SearchPage.new(@browser)
end

def page_title
@browser.title
end
  
def enter_keyword(keyword)
@browser.title
end

def browserclose
@browser.close
end
  
def expectedtext(expected)
#@browser.driver.manage.timeouts.implicit_wait = 300
@browser.text.should include expected
end

end
