require 'open-uri'
require 'json'

module Parse

  def parse_all(zip)
    JSON.parse(open("https://data.cityofnewyork.us/resource/a2h9-9z38.json?$query=select COUNT(zip_code) where zip_code='#{zip}'").read)
  end

  def parse_result(zip)
  JSON.parse(open("https://data.cityofnewyork.us/resource/a2h9-9z38.json?$query=select COUNT(result) where result IN ('Active Rat Signs', 'Problem Conditions', 'Bait applied') and zip_code='#{zip}'").read)
  end

end
