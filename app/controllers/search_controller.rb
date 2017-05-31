class SearchController < ApplicationController
  def search
    @results = 0
    if !params[:FinaleSearch].nil?
      @results = 1
      @searchinput = params[:FinaleSearch]
      @searchcriteria = "%" + @searchinput + "%"
      @finales = Finale.where("series || network like ?", @searchcriteria)
    end
  end

end
