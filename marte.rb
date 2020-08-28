require_relative 'request'
require_relative 'components'

api_key = 'v2B27pvxnZQgU9GzpSegZWAyiQNXFea9ab2cnPIz'
def build_web_page()
link = 'https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key='
key = "v2B27pvxnZQgU9GzpSegZWAyiQNXFea9ab2cnPIz"
index= head()+show_photo(link,key) + foot()
end
 

File.write('./index.html',build_web_page())
