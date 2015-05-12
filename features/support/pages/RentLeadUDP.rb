class LeadRentUDP

def credit_repair_form
@browser.div(:id, "myHomesOverlayPropertyLeadSuccessMoving").wait_until_present
end

=begin
Then /^I should see the Credit Repair Form$/ do
	@browser.div(:id, "myHomesOverlayPropertyLeadSuccessMoving").wait_until_present
end
=end

end