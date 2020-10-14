class GrammarDictionariesController < ApplicationController
  before_action :set_grammar_dictionary, only: [:show, :edit, :update, :destroy]

  # GET /grammar_dictionaries
  # GET /grammar_dictionaries.json
  def index
    @grammar_dictionaries = GrammarDictionary.all
  end

  # GET /grammar_dictionaries/1
  # GET /grammar_dictionaries/1.json
  def show
  end

  # GET /grammar_dictionaries/new
  def new
    @grammar_dictionary = GrammarDictionary.new
  end

  # GET /grammar_dictionaries/1/edit
  def edit
  end

  # POST /grammar_dictionaries
  # POST /grammar_dictionaries.json
  def create
    @grammar_dictionary = GrammarDictionary.new(grammar_dictionary_params)

    respond_to do |format|
      if @grammar_dictionary.save
        format.html { redirect_to @grammar_dictionary, notice: 'Grammar dictionary was successfully created.' }
        format.json { render :show, status: :created, location: @grammar_dictionary }
      else
        format.html { render :new }
        format.json { render json: @grammar_dictionary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grammar_dictionaries/1
  # PATCH/PUT /grammar_dictionaries/1.json
  def update
    respond_to do |format|
      if @grammar_dictionary.update(grammar_dictionary_params)
        format.html { redirect_to @grammar_dictionary, notice: 'Grammar dictionary was successfully updated.' }
        format.json { render :show, status: :ok, location: @grammar_dictionary }
      else
        format.html { render :edit }
        format.json { render json: @grammar_dictionary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grammar_dictionaries/1
  # DELETE /grammar_dictionaries/1.json
  def destroy
    @grammar_dictionary.destroy
    respond_to do |format|
      format.html { redirect_to grammar_dictionaries_url, notice: 'Grammar dictionary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grammar_dictionary
      @grammar_dictionary = GrammarDictionary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grammar_dictionary_params
      params.require(:grammar_dictionary).permit(:dictionary, :book_id)
    end
end
