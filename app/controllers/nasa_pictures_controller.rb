class NasaPicturesController < ApplicationController
  def index
  	@nasa_info = NasaApodApi.get_nasa_info
  	@url_type_is_youtube = @nasa_info["url"].include?('youtube.com')
  end
end
