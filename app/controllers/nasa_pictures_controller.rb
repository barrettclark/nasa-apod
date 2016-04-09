class NasaPicturesController < ApplicationController
  
  def index
  	@nasa_info = NasaApodApi.get_nasa_info(params[:date] || Date.today)
  	@media_type_is_video = @nasa_info["media_type"].eql?("video")
  	@nasa_url = @nasa_info["url"]
  end
end
