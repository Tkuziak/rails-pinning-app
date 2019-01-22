require "spec_helper"

RSpec.describe "Our Application Routes" do
	describe "GET /pins/name-:slug" do
		it 'renders the pins/show template' do
			pin = Pin.first
			slug = pin.slug
			
			visit "/pins/name-#{pin.slug}"
			expect(page).to have_text("Back to Home")
		end
	end
  
end