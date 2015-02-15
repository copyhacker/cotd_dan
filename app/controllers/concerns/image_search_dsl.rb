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

      # Apparently the google search api is depricated
      # Eff it.  It still works.
      # url = 'https://ajax.googleapis.com/ajax/services/search/images?v=1.0&q={search_term}'

      #  Here's a little JSON snack of that result
      #  + Let's dig in to the API params and see if we can't
      #    just return the imageID and URL
      #  + Let's use that Image ID as an identifier in our model.
      #    If it's good enough for Google (in this case), it's good
      #    enough for me.
      #   {
      #     responseData: {
      #     results: [
      #     - {
      #          GsearchResultClass: "GimageSearch",
      #          width: "800",
      #          height: "599",
      #          imageId: "ANd9GcQSIECHDzF1epvTby2d992cfd1Esy8dDEc8YTUVwIV_LWoMweA9XHYu2w5R",
      #          tbWidth: "143",
      #          tbHeight: "107",
      #          unescapedUrl: "http://a-z-animals.com/media/animals/images/original/capybara5.jpg",
      #          url: "http://a-z-animals.com/media/animals/images/original/capybara5.jpg",
      #          visibleUrl: "a-z-animals.com",
      #          title: "<b>Capybara</b> (Hydrochoerus hydrochaeris) - Animals - A-Z Animals <b>...</b>",
      #          titleNoFormatting: "Capybara (Hydrochoerus hydrochaeris) - Animals - A-Z Animals ...",
      #          originalContextUrl: "http://a-z-animals.com/animals/capybara/",
      #          content: "Male <b>Capybara</b> at Prague Zoo",
      #          contentNoFormatting: "Male Capybara at Prague Zoo",
      #          tbUrl: "http://t2.gstatic.com/images?q=tbn:ANd9GcQSIECHDzF1epvTby2d992cfd1Esy8dDEc8YTUVwIV_LWoMweA9XHYu2w5R"
      #       },
    end

    def scrapeCurlResults(search_results)
      # i hope I don't have to do this.
    end
  end
end