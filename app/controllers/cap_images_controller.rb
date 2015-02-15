class CapImagesController < ApplicationController
  before_action :set_cap_image, only: [:show, :edit, :update, :destroy]

  # GET /cap_images
  # GET /cap_images.json
  def index
    @cap_image = CapImage.all.first

    render template: "cap_images/index"
  end

  def like
    # if the current image exists
    # increment it's like_count by 1
    # if it doesn't exist in the DB
    # create the image and set the like_coumt to 1

  end

  # GET /cap_images/1
  # GET /cap_images/1.json
  def show
  end

  # GET /cap_images/new
  def new
    @cap_image = CapImage.new
  end

  # GET /cap_images/1/edit
  def edit
  end

  # POST /cap_images
  # POST /cap_images.json
  def create
    @cap_image = CapImage.new(cap_image_params)

    respond_to do |format|
      if @cap_image.save
        format.html { redirect_to @cap_image, notice: 'Cap image was successfully created.' }
        format.json { render :show, status: :created, location: @cap_image }
      else
        format.html { render :new }
        format.json { render json: @cap_image.errors, status: :unprocessable_entity }
      end
    end
  end



  private

    def fetch_random
      # Hit the images API and rpull that random image
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def cap_image_params
      params.require(:cap_image).permit(:url, :like_count)
    end
end
