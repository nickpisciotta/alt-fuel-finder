class FuelStationService

  def initialize
    @_connection = Faraday.new("http://developer.nrel.gov/api/alt-fuel-stations/v1")
    @_connection.headers["X-Api-Key"] = ENV["nrel_api_key"]
  end

  def search_stations(zip_code)
    response = connection.get("nearest.json?location=#{zip_code}")
    parse(response)
  end

  def parse(response)
    JSON.parse(response.body)
  end

  private
    def connection
      @_connection
    end
end
