class Flight < ApplicationRecord
  belongs_to :from_airport, foreign_key: 'start_airport_id', class_name: 'Airport'
  belongs_to :to_airport, foreign_key: 'finish_airport_id', class_name: 'Airport'
  has_many :bookings
  has_many :passengers, through: :bookings

  def start_datetime_formatted
    start_datetime.in_time_zone("Central Time (US & Canada)").strftime("%c")
  end

  def self.available_flights(start_airport_id, finish_airport_id, start_datetime)
    Flight.where("start_airport_id = ? AND finish_airport_id = ? AND start_datetime LIKE ?", start_airport_id.to_i, finish_airport_id.to_i, "#{start_datetime}%")
  end
end
