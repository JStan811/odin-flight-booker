class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.bigint :start_airport_id
      t.bigint :finish_airport_id
      t.datetime :start_datetime
      t.integer :duration

      t.timestamps
    end
  end
end
