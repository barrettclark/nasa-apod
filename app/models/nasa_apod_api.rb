class NasaApodApi

  def self.get_nasa_info(set_date)
    record = NasaMedium.where(:set_date => set_date).first
    unless record
      Rails.logger.debug "fetching #{set_date}"
      nasa = URI("https://api.nasa.gov/planetary/apod?api_key=#{ENV['NASA_API_KEY']}&date=#{set_date}")
      nasa_info = Net::HTTP.get(nasa)
      record = NasaMedium.create(:set_date => set_date, :payload => JSON.parse(nasa_info))
    end
    record.payload
  end

end
