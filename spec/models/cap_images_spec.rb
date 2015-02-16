#cap images model spec
require "spec_helper"
require "rails_helper"
# Prefix class methods with a '.'
describe CapImage, '.fetch_random_image' do
  it 'returns a random capybara image' do

    cap_image = CapImage.fetch_random_image

    expect(cap_image.like_count).to eq 0
    expect(cap_image).to be_instance_of(CapImage)
  end
end

# Prefix instance methods with a '#'
describe CapImage, '#increment_like_count' do
  it 'increments an existing image\'s like_count'  do

    @cap_image = FactoryGirl.create_list(:cap_image, 1).first
    @cap_image.like_count = 7
    @cap_image.increment_like_count

    expect(@cap_image.like_count).to eq 8
  end
end