class ConcordancesController < ApplicationController
  before_action :set_concordance, only: [:show, :edit, :update, :destroy]

  # GET /concordances
  # GET /concordances.json
  def index
    @concordances = Concordance.all
  end

  # GET /concordances/1
  # GET /concordances/1.json
  def show
  end

  # GET /concordances/new
  def new
    @concordance = Concordance.new
  end

  # GET /concordances/1/edit
  def edit
  end

  # POST /concordances
  # POST /concordances.json
  def create
    @concordance = Concordance.new(concordance_params)

    respond_to do |format|
      if @concordance.save
        format.html { redirect_to @concordance, notice: 'Concordance was successfully created.' }
        format.json { render :show, status: :created, location: @concordance }
      else
        format.html { render :new }
        format.json { render json: @concordance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /concordances/1
  # PATCH/PUT /concordances/1.json
  def update
    respond_to do |format|
      if @concordance.update(concordance_params)
        format.html { redirect_to @concordance, notice: 'Concordance was successfully updated.' }
        format.json { render :show, status: :ok, location: @concordance }
      else
        format.html { render :edit }
        format.json { render json: @concordance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /concordances/1
  # DELETE /concordances/1.json
  def destroy
    @concordance.destroy
    respond_to do |format|
      format.html { redirect_to concordances_url, notice: 'Concordance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_concordance
      @concordance = Concordance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def concordance_params
      params.require(:concordance).permit(:concordance, :is_it_lemma, :width)
    end
end
