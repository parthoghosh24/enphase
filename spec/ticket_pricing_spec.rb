require_relative "../ticket_pricing.rb"
describe TicketPricing do
	
	context "testing the solution with [1,2,4,5,7,29,30]" do
		let(:arr){ [1,2,4,5,7,29,30] }
		it "returns 11 as minimum price" do
			expect(TicketPricing.solution(arr)).to eql(11)  
		end
	end

	context "testing the solution with a nil input" do
		let(:arr){ nil }
		it "returns 0 as minimum price" do
			expect(TicketPricing.solution(arr)).to eql(0)  
		end
	end

	context "testing the solution with a [] input" do
		let(:arr){ [] }
		it "returns 0 as minimum price" do
			expect(TicketPricing.solution(arr)).to eql(0)  
		end
	end

	context "testing the solution with a [1] input" do
		let(:arr){ [1] }
		it "returns 2 as minimum price" do
			expect(TicketPricing.solution(arr)).to eql(2)  
		end
	end

	context "testing the solution with a [1,7,8,9,10] input" do
		let(:arr){ [1,7,8,9,10] }
		it "returns 9 as minimum price" do
			expect(TicketPricing.solution(arr)).to eql(9)  
		end
	end
end