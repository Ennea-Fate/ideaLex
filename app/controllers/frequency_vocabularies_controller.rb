class FrequencyVocabulariesController < ApplicationController
  before_action :set_frequency_vocabulary, only: [:show, :edit, :update, :destroy]
  require 'socket'
  # GET /frequency_vocabularies
  # GET /frequency_vocabularies.json
  def index
    @frequency_vocabularies = FrequencyVocabulary.all
  end

  # GET /frequency_vocabularies/1
  # GET /frequency_vocabularies/1.json
  def show
  end

  # GET /frequency_vocabularies/new
  def new
    @frequency_vocabulary = FrequencyVocabulary.new
  end

  # GET /frequency_vocabularies/1/edit
  def edit
  end

  # POST /frequency_vocabularies
  # POST /frequency_vocabularies.json
  def create
    @frequency_vocabulary = FrequencyVocabulary.new(frequency_vocabulary_params)
    
    respond_to do |format|
      if @frequency_vocabulary.save
        format.html { redirect_to @frequency_vocabulary, notice: 'Frequency vocabulary was successfully created.' }
        format.json { render :show, status: :created, location: @frequency_vocabulary }
      else
        format.html { render :new }
        format.json { render json: @frequency_vocabulary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frequency_vocabularies/1
  # PATCH/PUT /frequency_vocabularies/1.json
  def update
    respond_to do |format|
      if @frequency_vocabulary.update(frequency_vocabulary_params)
        format.html { redirect_to @frequency_vocabulary, notice: 'Frequency vocabulary was successfully updated.' }
        format.json { render :show, status: :ok, location: @frequency_vocabulary }
      else
        format.html { render :edit }
        format.json { render json: @frequency_vocabulary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frequency_vocabularies/1
  # DELETE /frequency_vocabularies/1.json
  def destroy
    @frequency_vocabulary.destroy
    respond_to do |format|
      format.html { redirect_to frequency_vocabularies_url, notice: 'Frequency vocabulary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frequency_vocabulary
      @frequency_vocabulary = FrequencyVocabulary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def frequency_vocabulary_params
      params.require(:frequency_vocabulary).permit(:text, :book_id)
    end
end
