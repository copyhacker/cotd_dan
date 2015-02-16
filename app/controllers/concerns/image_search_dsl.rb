require 'json'
require 'net/http'
require 'uri'

module ImageSearchDsl
  extend ActiveSupport::Concern

  included do
    # here's where we can put code that
    # stuff that can pork-out some models
    # ...stuff that maybe could be shared by
    # more than one model, or has multi-model
    # logic going on
    # or whatever
  end

  module ClassMethods
    def fetch_random_image(search_term = '')
      # Apparently the google search api is depricated
      # Eff it.  It still works.
      search_query = '&q=capybara'
      search_query += search_term ? '+' + search_term : ''

      response = call_google_api(search_query)
      if response.code == '200'
        result = JSON.parse(response.body)
        res_images = result['responseData']['results']
        img = res_images[rand(res_images.length)]
        cap_image = fetch_cap_image(img)
      else
        cap_image = false
      end
      cap_image
    end

    def call_google_api(search_query = '')
      api_url = 'https://ajax.googleapis.com/ajax/services/search/images?v=1.0' + search_query
      uri = URI.parse(api_url)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE # Sets the HTTPS verify mode
      http.get(uri.request_uri)
    end

    # REFACTOR?
    # Maybe this one ought to go in the model
    def fetch_cap_image(random_image)
      cap_image = CapImage.where(google_image_id: random_image['imageId'].to_s,
                                 url: random_image['url'])
                          .first_or_create
      cap_image.like_count = cap_image.like_count ? cap_image.like_count : 0
      cap_image

    end
  end
end