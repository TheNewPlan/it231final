class BrowseController < ApplicationController
  @finales = ''
  @lineNumber = 1
  def browse
    @finales = Finale.all
  end

  def seriessort
    @lineNumber =1
    @finales = Finale.order('series')
  end

  def viewershipsort
    @lineNumber = 1
    @finales = Finale.order('viewership')
  end

  def ratingsort
    @lineNumber = 1
    @finales = Finale.order('rating')
  end

  def sharesort
    @lineNumber = 1
    @finales = Finale.order('share')
  end

  def datesort
    @lineNumber = 1
    @finales = Finale.order('date')

  end

  def networksort
    @lineNumber = 1
    @finales = Finale.order('network')
  end

end
