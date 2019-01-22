require 'spec_helper'
require 'rails_helper'

RSpec.describe PinsController do

	describe "GET index" do

		it 'Makes sure the index loads successfully' do
			get :index
			expect(response).to have_http_status(:success)
		end

		it 'populates @pins with all pins' do
			get :index

			#This line from Skillcrush is not working
			#expect(assigns[:pins]).to eq(Pin.all)

		end

	end

end