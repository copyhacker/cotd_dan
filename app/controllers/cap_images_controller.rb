class CapImagesController < ApplicationController
  include ImageSearchDsl

  # GET /cap_images
  # GET /cap_images.json
  def index
    @cap_image = fetch_cap_image(params['q'])

    if @cap_image.nil?
      @cap_image = CapImage.all.first
      flash.now[:alert] = 'Couldn\'t fetch random image. Here\'s one from the archives.'
    end

    respond_to do |format|
      format.html
      format.json { render json: @cap_image }
    end
  end

  def like
    @cap_image = CapImage.find_by(google_image_id: params['cap_image_id'])
    if @cap_image.like_count
      @cap_image.like_count += 1
    else
      @cap_image.like_count = 1
    end

    @cap_image.save
    redirect_to action: "index"
  end

  private
  def fetch_cap_image(search_term = false)
    CapImage.fetch_random_image(search_term)
  end


  # Never trust parameters from the scary internet, only allow the white list through.
  def cap_image_params
    params.require(:cap_image).permit(:url, :like_count, :google_image_id)
  end
end
