module ImageSearchDsl
  extend ActiveSupport::Concern

  included do
    # here's where we can put code that
    # stuff that can pork-out some models
    # ...stuff like a bunch of scopes, lambdas,
    # or whatever
  end

  module ClassMethods
    #
    def fetchRandomImage(search_term)
      #search the api with search term (if exists)

      # Apparently the google search api is not around any longer
      # honestly, I'm not sure which one of their APIs to use
      # In a rad world, it'd be http://google.com/images/capybara?q=swimming
      # I guess the world isn't rad.
      # url = https://www.googleapis.com/customsearch/v1?q=capybara&searchType=image&key={Rails.application.secrets.custom_search_api_key}

    end

    def scrapeCurlResults(search_results)
      # i hope I don't have to do this.
    end
  end
end