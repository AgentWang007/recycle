# require_relative "parser"
require 'open-uri'
require 'json'

module Parser
#define method to get the date from the website.
  def self.load_data
    file = open("https://data.cityofnewyork.us/resource/sxx4-xhzg.json?borough=brooklyn")
    data = file.read
    result = JSON.parse(data)
    result.each do |bin| RecycleBin.new(bin)
    end
  end

  def self.query(search)
    answer = open("https://data.cityofnewyork.us/api/views/sxx4-xhzg/rows.json?$borough=#{search[0]}+site_type= #{search[1]}")
  end
end

class RecycleBin
  include Parser
  attr_reader :borough, :site_type, :park_site_name, :address
  def initialize(attr = {})
    @borough = attr[:borough]
    @site_type = attr[:site_type]
    @park_site_name = attr[:park_site_name]
    @address = attr[:address]
    @latitude = attr[:latitude]
    @longitude = attr[:longitude]
  end

  def to_s
    "#{borough}#{site_type}#{park_site_name}#{address}"
  end

end

final_data = Parser.load_data

