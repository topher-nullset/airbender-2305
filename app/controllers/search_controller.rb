class SearchController < ApplicationController
  def index
    nation = params[:nation]
    @avatar_search_data = SearchFacade.search(nation)
  end
end