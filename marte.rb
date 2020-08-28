require_relative 'request'
require_relative 'components'

api_key = 'v2B27pvxnZQgU9GzpSegZWAyiQNXFea9ab2cnPIz'
def build_web_page()
url = "v2B27pvxnZQgU9GzpSegZWAyiQNXFea9ab2cnPIz"
index= head()+show_photo(url) + foot()
end
 

File.write('./index.html',build_web_page())
