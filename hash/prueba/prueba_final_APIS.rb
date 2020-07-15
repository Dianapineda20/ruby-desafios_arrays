require "uri"
require "net/http"
require "json"

def  request(url, api)
    url = URI(url + "&api_key=" + api)
    puts url.port
    https = Net::HTTP.new(url.host, url.port);
    https.use_ssl = true
    # http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Get.new(url)
    request ['app_id']= '4e7c1129-d83c-44e7-8147-dcdc5ce85f22'
    request ['app_key']= '1nCzmBKkvH7vo8CKIU236gL3zMOnUKzo4k7qGoL6'
    response = https.request(request)
    return JSON.parse (response.body)
    # return response.read_body
end


def build_web_page(response)
    
    fotos = []
    response["photos"].each do |item|
        item.each do |k, v|
            if k == 'img_src'
                fotos.push(v)
            end
        end
    end
    
#     output = "<html>\n<head>\n</head>\n\t<body>\n\t\t<ul>"
#     fotos.each do |img|
#         output +="\n\t\t\t<li><img src=#{img} /></li>"
#     end
#     output += "\n\t\t</ul>\n\t</body>\n</html>"
#     out_file = File.new("index.html", "w") 
#     out_file.puts (output)
#     out_file.close
# end

hash = request 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=10', '1nCzmBKkvH7vo8CKIU236gL3zMOnUKzo4k7qGoL6'

build_web_page hash


# def photos_count 
#     fotos = []
#     response["photos"].each do |item|
#         item.each do |k, v|
#             if k == 'img_src'
#                 fotos.push(v)
#             end
#         end
#     end
