class SearchController < ApplicationController

  def index
    @search_results = FuelStation.search_by_location(params["zip_code_search"])
  end

end
