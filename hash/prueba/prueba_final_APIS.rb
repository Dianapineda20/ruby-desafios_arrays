require "uri"
require "net/http"
require "json"

def  request(url, api)
    url = URI(url + "&api_key=" + api)
    puts url
    https = Net::HTTP.new(url.host, url.port);
    https.use_ssl = true
    request = Net::HTTP::Get.new(url)
    request ['app_id']= '4e7c1129-d83c-44e7-8147-dcdc5ce85f22'
    request ['app_key']= '1nCzmBKkvH7vo8CKIU236gL3zMOnUKzo4k7qGoL6'
    response = https.request(request)
    return JSON.parse (response.body)
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
end

def photos_count(response)
    resultado={}
    response["photos"].each do |item|
        item.each do |k, v|
             camara_nombre=item["camera"]["name"]
            existe= resultado.include? camara_nombre
            if existe == true
                resultado[camara_nombre] += 1
            else
                resultado[camara_nombre] = 1
            end  
        end
    end
    return resultado
end

hash = request 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=10', '1nCzmBKkvH7vo8CKIU236gL3zMOnUKzo4k7qGoL6'

build_web_page hash
puts hash


