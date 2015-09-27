require 'open-uri'
require 'json'

module Parser
#define method to get the date from the website.
  def self.load_data
    file = open("https://data.cityofnewyork.us/resource/sxx4-xhzg.json?borough=brooklyn")
    data = file.read
    result = JSON.parse(data)
    result.map{ |bin| RecycleBin.new(bin)}

  end

  def self.query(search)
    answer = open("https://data.cityofnewyork.us/api/views/sxx4-xhzg/rows.json?$borough=#{search[0]}+site_type= #{search[1]}")
  end
end

p final_data = Parser.load_data
