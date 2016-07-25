class FuelStation < ActiveRecord::Base

  def self.service
    @service ||= FuelStationService.new
  end

  def self.search_by_location
    byebug
    search_results_hash = service.search_stations
  end


end
