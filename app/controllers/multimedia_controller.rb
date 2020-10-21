class MultimediaController < ApplicationController
  before_action :set_multimedia, only: [:show, :edit, :update, :destroy]

  # GET /multimedia
  # GET /multimedia.json
  def index
    @multimedia = Multimedia.all
  end

  # GET /multimedia/1
  # GET /multimedia/1.json
  def show
  end

  # GET /multimedia/new
  def new
    @multimedia = Multimedia.new
  end

  # GET /multimedia/1/edit
  def edit
  end

  # POST /multimedia
  # POST /multimedia.json
  def create
    @multimedia = Multimedia.new(multimedia_params)
    @multimedia.kindof = helpers.detect_file_type(multimedia_params[:file].original_filename)

    respond_to do |format|
      if @multimedia.save
        format.html { redirect_to @multimedia, notice: 'Multimedia was successfully created.' }
        format.json { render :show, status: :created, location: @multimedia }
      else
        format.html { render :new }
        format.json { render json: @multimedia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /multimedia/1
  # PATCH/PUT /multimedia/1.json
  def update
    respond_to do |format|
      if @multimedia.update(multimedia_params)
        format.html { redirect_to @multimedia, notice: 'Multimedia was successfully updated.' }
        format.json { render :show, status: :ok, location: @multimedia }
      else
        format.html { render :edit }
        format.json { render json: @multimedia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /multimedia/1
  # DELETE /multimedia/1.json
  def destroy
    @multimedia.destroy
    respond_to do |format|
      format.html { redirect_to multimedia_index_url, notice: 'Multimedia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_multimedia
      @multimedia = Multimedia.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def multimedia_params
      params.require(:multimedia).permit(:name, :description, :tags, :kindof, :file)
    end
end
