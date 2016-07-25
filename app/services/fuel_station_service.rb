class FuelStationService

  def initialize
    @_connection = Faraday.new("developer.nrel.gov/api/alt-fuel-stations/v1")
    @_connection.headers["X-Api-Key"] = "k7ZS4PUREkVof8OUUoK6plWpyIaVPuRkPFyCG2aa"
  end

  def search_stations(zip_code)
    response = connection.get("nearest.json?location=#{zip_code}")
    parse(response)
  end



  private
    def connection
      @_connection
    end
end
