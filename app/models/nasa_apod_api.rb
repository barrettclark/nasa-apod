class NasaApodApi

  def self.get_nasa_info
    nasa = URI("https://api.nasa.gov/planetary/apod?api_key=#{ENV['NASA_API_KEY']}")
    nasa_info = Net::HTTP.get(nasa)
    JSON.parse(nasa_info)
  end



end
