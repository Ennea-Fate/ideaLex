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
    @concordance_books = ConcordanceBook.new()
    @concordance_books.book_id = concordance_params[:book_ids]
    @concordance_books.concordance_id = @concordance.id
    @concordance_books.created_at = DateTime.current.to_date
    @concordance_books.updated_at = DateTime.current.to_date

    s = TCPSocket.new 'localhost', 3002
    conc_id = (Concordance.all.last.id + 1).to_s
    book_ids = concordance_params[:book_ids]
    word = concordance_params[:word]
    lemma = (@concordance.is_it_lemma ? "true" : "false")
    s.puts ("concordance/" + conc_id + "/" + book_ids.to_s + ":" + "0" + ":" + "1000" + "/" + word.to_s + "/" + lemma + "\r\n\r\n")
    s.close

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
      params.require(:concordance).permit(:concordance, :is_it_lemma, :width, :word, :page_from, :page_to, :book_ids)
    end
end
