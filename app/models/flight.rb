class Flight < ApplicationRecord
  belongs_to :from_airport, foreign_key: 'start_airport_id', class_name: 'Airport'
  belongs_to :to_airport, foreign_key: 'finish_airport_id', class_name: 'Airport'

  def start_datetime_formatted
    start_datetime.in_time_zone("Central Time (US & Canada)").strftime("%c")
  end
end
