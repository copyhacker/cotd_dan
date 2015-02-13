class CapImagesController < ApplicationController
  before_action :set_cap_image, only: [:show, :edit, :update, :destroy]

  # GET /cap_images
  # GET /cap_images.json
  def index
    @cap_images = CapImage.all
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

  # PATCH/PUT /cap_images/1
  # PATCH/PUT /cap_images/1.json
  def update
    respond_to do |format|
      if @cap_image.update(cap_image_params)
        format.html { redirect_to @cap_image, notice: 'Cap image was successfully updated.' }
        format.json { render :show, status: :ok, location: @cap_image }
      else
        format.html { render :edit }
        format.json { render json: @cap_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cap_images/1
  # DELETE /cap_images/1.json
  def destroy
    @cap_image.destroy
    respond_to do |format|
      format.html { redirect_to cap_images_url, notice: 'Cap image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cap_image
      @cap_image = CapImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cap_image_params
      params.require(:cap_image).permit(:url, :like_count)
    end
end
