class NasaApodApi

  def self.get_nasa_info(set_date=Date.today.to_s)
    nasa = URI("https://api.nasa.gov/planetary/apod?api_key=#{ENV['NASA_API_KEY']}&date=#{set_date}")
    nasa_info = Net::HTTP.get(nasa)
    JSON.parse(nasa_info)
  end

end
