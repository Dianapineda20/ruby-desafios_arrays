require "uri"
require "net/http"

def  request(url, api)
    url = URI(url + "&api_key=" + api)

    puts url.port
    https = Net::HTTP.new(url.host, url.port);
    https.use_ssl = true

    request = Net::HTTP::Get.new(url)

    response = https.request(request)
    return response.read_body
end

hash = request 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000', 'DEMO_KEY'
puts hash