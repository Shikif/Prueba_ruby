require_relative 'request'

api_key = 'v2B27pvxnZQgU9GzpSegZWAyiQNXFea9ab2cnPIz'
link = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key='
def request(url,key)
    weather = get_data("#{url}#{key}")
    return weather
end

def head
  head = 
  "<!doctype html>
      <html lang='es'>
      <head>
      <!-- Required meta tags -->
      <meta charset='utf-8'>
      <meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'>

      <!-- Bootstrap CSS -->
      <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css' integrity='sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z' crossorigin='anonymous'>

      <title>Fotos Marte</title>
      </head>
      <body>"
              return head
end

def show_photo(url,api_key)

    data = request(url,api_key)

    cards =
    "\n\t\t\t<div class='row mx-auto'>"

    
    
    data.each do |photos,array|
        array.each do |i|
            cards += "
            <div class ='col-md-4 '>
              <div class='card' style='width: 18rem;'>
                <img src='#{i['img_src']}' class='card-img-top' alt='#{i['id']}'>
                <div class='card-body'>
                  <h5 class='card-title'>#{i['id']}<br> Fecha: #{i['earth_date']}</h5>
                  <p class='card-text'>Info Camara: #{i['camera']}</p>
                </div>
              </div>
            </div>"
    
            
        end
    cards+=
    '</div>'
    end
    return cards
end

def foot
  foot = 
  "<!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src='https://code.jquery.com/jquery-3.5.1.slim.min.js' integrity='sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj' crossorigin='anonymous'></script>
      <script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js' integrity='sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN' crossorigin='anonymous'></script>
      <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js' integrity='sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV' crossorigin='anonymous'></script>
      </body>
  </html>"

return foot
end
#Contar fotos
def photos_count(link,key)

  or_hash = request(link,key)
  filtrar = {}
  

  or_hash.each do |photo,array|
    array.each do |i|
      i['camera'].each do |key,value|
         print value if key == 'full_name'
         
        
      end
    end
  end

return 

end














