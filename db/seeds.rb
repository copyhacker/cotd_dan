# Here's a rad command to yank image ids and urls from google images
# curl "https://ajax.googleapis.com/ajax/services/search/images?v=1.0&q=capybara"  | jq '{imageId: .responseData.results[].imageId, url:.responseData.results[].url}'
api_images = [
  {
    image_id: "ANd9GcQSIECHDzF1kpvTby2d992cfd1Esy8dDEc8YTUVwIV_LWoMweA9XHYu2w5T",
    url: "http://a-z-animals.com/media/animals/images/original/capybara5.jpg"
  },
  {
    image_id: "ANd9GcQSIECHDzF1epvTby2d792cfd1Esy8dDEc8YTUVwIV_LWoMweA9XHYu2w5Y",
    url: "http://thumbs.media.smithsonianmag.com//filer/2e/73/2e738d22-a273-4a77-a76e-c5486b80c309/02_07_2014_capybara_monkey.jpg__800x600_q85_crop.jpg"
  },
  {
    image_id: "ANd9GcQSIECHDzF19pvTby2d992cfd1Esy8dDEc8YTUVwIV_LWoMweA9XHYu2w5O",
    url: "http://i.huffpost.com/gen/1203574/thumbs/o-CAPYBARA-HUGS-CAT-facebook.jpg"
  },
  {
    image_id: "ANd9GcQSIECHDzF1epvTby2d992cfd3Esy8dDEc8YTUVwIV_LWoMweA9XHYu2w5P",
    url: "http://www.porfell.co.uk/assets/PICT0125.jpg"
  },
  {
    image_id: "ANd9GcRYRVeSVRZBegvqgK-rtAQ0xZdSzgLXWphGh5eBDHMe5WwYrkDSKmxQ4rTL",
    url: "http://a-z-animals.com/media/animals/images/original/capybara5.jpg"
  },
  {
    image_id: "ANd9GcRYRVeSVRZBegvqgK-rtAQ0xZdSzgLXWphGh5eBDHMe5WwYrkDSKmxQ4rDT",
    url: "http://thumbs.media.smithsonianmag.com//filer/2e/73/2e738d22-a273-4a77-a76e-c5486b80c309/02_07_2014_capybara_monkey.jpg__800x600_q85_crop.jpg"
  },
  {
    image_id: "ANd9GcRYRVeSVRZBegvqgK-rtAQ0xZdSzgLXWphGh5eBDHMe5WwYrkDSKmxQ4rLT",
    url: "http://i.huffpost.com/gen/1203574/thumbs/o-CAPYBARA-HUGS-CAT-facebook.jpg"
  },
  {
    image_id: "ANd9GcRYRVeSVRZBegvqgK-rtAl0xZdSzgLXWphh5eBDHMe5WwYrkDSKmxQ4riT",
    url: "http://www.porfell.co.uk/assets/PICT0125.jpg"
  },
  {
    image_id: "ANd9GcSBswcCyWT-cBQrh_Qe8U9AN00jhEG31ZwWgFmzBgPbrWZcA_uH17d-OZc4",
    url: "http://a-z-animals.com/media/animals/images/original/capybara5.jpg"
  },
  {
    image_id: "ANd9GcSBswcCyWT-cBQra_Qe7U9AN00jhEG31ZwWgFmzBgPbrWZcA_uH17d-OZc6",
    url: "http://thumbs.media.smithsonianmag.com//filer/2e/73/2e738d22-a273-4a77-a76e-c5486b80c309/02_07_2014_capybara_monkey.jpg__800x600_q85_crop.jpg"
  },
  {
    image_id: "ANd9GcSBswcCyWT-cBQra_Qe7U8AN00jhEG31ZwWgFmzBgPbrWZcA_uH17d-OZb4",
    url: "http://i.huffpost.com/gen/1203574/thumbs/o-CAPYBARA-HUGS-CAT-facebook.jpg"
  },
  {
    image_id: "ANd9GcSBswcCyWT-cBQra_Qe7U9A6N00jhEG31ZwWgFmzBgPbrWZcA_uH17d-OZc5",
    url: "http://www.porfell.co.uk/assets/PICT0125.jpg"
  },
  {
    image_id: "ANd9GcSQxCm4-WDyqQ6K93hUDe3uOJ2lJAmLKiZdVGfvB2Mfp9Pywc9ha7wcyQ",
    url: "http://a-z-animals.com/media/animals/images/original/capybara5.jpg"
  },
  {
    image_id: "ANd9GcSQxCm4-WDyqQ6K93hUDe3uOJ2lJkmLKiZdVGfvB2Mfp9Pywc9ha7wcyQ",
    url: "http://thumbs.media.smithsonianmag.com//filer/2e/73/2e738d22-a273-4a77-a76e-c5486b80c309/02_07_2014_capybara_monkey.jpg__800x600_q85_crop.jpg"
  },
  {
    image_id: "ANd9GcSQxCm4-WDyqQ6K93hUDe3uOJ8lJAmLKiZdVGfvB2Mfp9Pywc9ha7wc7Q",
    url: "http://i.huffpost.com/gen/1203574/thumbs/o-CAPYBARA-HUGS-CAT-facebook.jpg"
  },
  {
    image_id: "ANd9GcSQxCm4-WDyqQ6K93hUDe3uO92lJAmLKiZdVGfvB2Mfp9Pywc9ha7w3yQ",
    url: "http://www.porfell.co.uk/assets/PICT0125.jpg"
  }
]

api_images.each do |api_image|
  CapImage.create(google_image_id: api_image[:image_id].to_s, url: api_image[:url].to_s, like_count: rand(187))
end
