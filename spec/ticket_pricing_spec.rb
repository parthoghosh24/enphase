require_relative "../ticket_pricing.rb"
describe TicketPricing do
	let(:arr){ [1,2,4,5,7,29,30] }
	context "testing the solution" do
		it "returns 11 as minimum price" do
			expect(TicketPricing.solution(arr)).to eql(11)  
		end
	end
end