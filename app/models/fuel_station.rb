class FuelStation < ActiveRecord::Base

  def self.service
    @service ||= FuelStationService.new
  end

  def self.search_by_location(zip_code)
    search_results_hash = service.search_stations(zip_code)["fuel_stations"]
    all_electric_petroleum = search_results_hash.find_all do |fuel_station|
      fuel_station["fuel_type_code"] == "ELEC" || "LPG"
    end
  end


end
