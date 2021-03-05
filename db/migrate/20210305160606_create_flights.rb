class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.string :flight_number
      t.string :date
      t.string :departure_city
      t.string :arrival_city
    end
  end
end
