# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Clear out all tables before repopulating them
Airport.delete_all
Flight.delete_all

Airport.create(code: 'SFO')
Airport.create(code: 'NYC')
Airport.create(code: 'DFW')
Airport.create(code: 'JFK')
Airport.create(code: 'MCO')
Airport.create(code: 'PHX')
Airport.create(code: 'ATL')
Airport.create(code: 'DEN')
Airport.create(code: 'ORD')
Airport.create(code: 'LAX')

Flight.create(start_airport_id: Airport.find_by(code: 'SFO').id, finish_airport_id: Airport.find_by(code: 'NYC').id, start_datetime: '2021-10-20 17:00', duration: 330)

Flight.create(start_airport_id: Airport.find_by(code: 'SFO').id, finish_airport_id: Airport.find_by(code: 'NYC').id, start_datetime: '2021-10-21 17:00', duration: 330)

Flight.create(start_airport_id: Airport.find_by(code: 'SFO').id, finish_airport_id: Airport.find_by(code: 'NYC').id, start_datetime: '2021-10-21 12:00', duration: 330)

Flight.create(start_airport_id: Airport.find_by(code: 'SFO').id, finish_airport_id: Airport.find_by(code: 'NYC').id, start_datetime: '2021-10-22 14:30', duration: 330)

Flight.create(start_airport_id: Airport.find_by(code: 'NYC').id, finish_airport_id: Airport.find_by(code: 'SFO').id, start_datetime: '2021-10-20 14:00', duration: 330)

Flight.create(start_airport_id: Airport.find_by(code: 'NYC').id, finish_airport_id: Airport.find_by(code: 'SFO').id, start_datetime: '2021-10-20 22:00', duration: 330)

Flight.create(start_airport_id: Airport.find_by(code: 'NYC').id, finish_airport_id: Airport.find_by(code: 'SFO').id, start_datetime: '2021-10-22 10:00', duration: 330)

Flight.create(start_airport_id: Airport.find_by(code: 'NYC').id, finish_airport_id: Airport.find_by(code: 'SFO').id, start_datetime: '2021-10-22 6:00', duration: 330)
