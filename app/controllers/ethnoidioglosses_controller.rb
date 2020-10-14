class EthnoidioglossesController < ApplicationController
  before_action :set_ethnoidiogloss, only: [:show, :edit, :update, :destroy]

  # GET /ethnoidioglosses
  # GET /ethnoidioglosses.json
  def index
    @ethnoidioglosses = Ethnoidiogloss.all
  end

  # GET /ethnoidioglosses/1
  # GET /ethnoidioglosses/1.json
  def show
  end

  # GET /ethnoidioglosses/new
  def new
    @ethnoidiogloss = Ethnoidiogloss.new
  end

  # GET /ethnoidioglosses/1/edit
  def edit
  end

  # POST /ethnoidioglosses
  # POST /ethnoidioglosses.json
  def create
    @ethnoidiogloss = Ethnoidiogloss.new(ethnoidiogloss_params)

    respond_to do |format|
      if @ethnoidiogloss.save
        format.html { redirect_to @ethnoidiogloss, notice: 'Ethnoidiogloss was successfully created.' }
        format.json { render :show, status: :created, location: @ethnoidiogloss }
      else
        format.html { render :new }
        format.json { render json: @ethnoidiogloss.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ethnoidioglosses/1
  # PATCH/PUT /ethnoidioglosses/1.json
  def update
    respond_to do |format|
      if @ethnoidiogloss.update(ethnoidiogloss_params)
        format.html { redirect_to @ethnoidiogloss, notice: 'Ethnoidiogloss was successfully updated.' }
        format.json { render :show, status: :ok, location: @ethnoidiogloss }
      else
        format.html { render :edit }
        format.json { render json: @ethnoidiogloss.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ethnoidioglosses/1
  # DELETE /ethnoidioglosses/1.json
  def destroy
    @ethnoidiogloss.destroy
    respond_to do |format|
      format.html { redirect_to ethnoidioglosses_url, notice: 'Ethnoidiogloss was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ethnoidiogloss
      @ethnoidiogloss = Ethnoidiogloss.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ethnoidiogloss_params
      params.require(:ethnoidiogloss).permit(:word, :description, :status, :author_id, :user_id, :book_id)
    end
end
