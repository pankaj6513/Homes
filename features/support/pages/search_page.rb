class SearchPage

	def initialize(browser)
		@browser = browser
	end

	def results
		@browser.div(:class, "top-search").wait_until_present
	end

end
