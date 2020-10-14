class SearchEngineController < ApplicationController
  def index
    @search_results = PgSearch.multisearch(params[:search])
    # log = Logger.new('log/my.log')
    # log.debug("params[:search] = #{params[:search]}")
    # log.debug("@search_results = #{@search_results}")
    # log.debug("#{@search_results.inspect}")
  end
  
  def unanimous
    @search_results = Unanimou.search_everywhere(params[:search])
  end

  def concordance
    @search_results = ConcWord.search_everywhere(params[:search])
  end

  def freqvoc
    @search_results = FreqVocWord.search_everywhere(params[:search])
  end

  def grammdict
    @search_results = GrammDictWord.search_everywhere(params[:search])
  end
end
  