require "spec_helper"
require "rails_helper"
describe CapImagesController do
  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe "GET index with search param" do
    it "has a 200 status code" do
      get :index, q: "swimming"
      response.should be_ok
      #@recordings.map(&:name).should == ['expected1', 'expected2']
    end
  end

  describe "GET like" do
    it "has a 200 status code" do
      get :like
      expect(response.status).to eq(200)
    end
  end
end