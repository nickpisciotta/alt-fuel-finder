class CreateFuelStations < ActiveRecord::Migration
  def change
    create_table :fuel_stations do |t|

      t.timestamps null: false
    end
  end
end
