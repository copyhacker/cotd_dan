require "rails_helper"

RSpec.describe "cotd", :type => :request do
   describe "JSON" do
      it "serves random capybara image as JSON" do
        @cap_image = FactoryGirl.create_list(:cap_image, 1)
        get '/cotd', { :format => :json }
        expect(response.status).to be(200)
        expect(JSON.parse(response.body)['like_count']).to eq(@cap_image.first[:like_count])
      end
    end
end