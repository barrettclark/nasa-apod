class NasaPicturesController < ApplicationController
  
  def index
  	@nasa_info = NasaApodApi.get_nasa_info(params[:date] || Time.now.in_time_zone('US/Eastern').to_date
.to_s)
  	@media_type_is_video = @nasa_info["media_type"].eql?("video")
  	@nasa_url = @nasa_info["url"]
  end
end
