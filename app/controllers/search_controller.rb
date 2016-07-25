class SearchController < ApplicationController

  def index
    @search_results = FuelStation.search_by_location
  end

end
