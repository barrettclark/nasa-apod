class NasaApodApi

  @@dates = {}

  def self.get_nasa_info(set_date=Date.today.to_s)
    unless @@dates.include?(set_date)
      Rails.logger.debug "fetching #{set_date}"
      nasa = URI("https://api.nasa.gov/planetary/apod?api_key=#{ENV['NASA_API_KEY']}&date=#{set_date}")
      nasa_info = Net::HTTP.get(nasa)
      @@dates[set_date] = JSON.parse(nasa_info)
    end
    @@dates[set_date]

  end

end
