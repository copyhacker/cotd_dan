class CapImagesController < ApplicationController
  before_action :set_cap_image, only: [:show, :edit, :update, :destroy]

  # GET /cap_images
  # GET /cap_images.json
  def index
    #use this for setting everyting up.
    # Delete it when we write fetch_random
    @cap_image = CapImage.all.first

    # when fetch random is written, use this
    # if params['q']
    #   @cap_image = fetch_random(params['q'])
    # else
    #   @cap_image = fetch_random
    # end

    respond_to do |format|
      format.html
      format.json { render json: @cap_image}
    end
  end

  def like
    cap_image = CapImage.get(params['cap_image_id'])
    cap_image.like_count += 1
    cap_image.save
    render :index
  end

  private
    def fetch_random(search_term = nil)
      # Hit the images API and pull that random image
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def cap_image_params
      params.require(:cap_image).permit(:url, :like_count)
    end
end
