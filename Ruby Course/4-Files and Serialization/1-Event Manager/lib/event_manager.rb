=begin
puts 'Event Manager Initialized!'

lines = File.readlines('../event_attendees.csv')

lines.each do |line|
    columns = line.split(",")
    name = columns[2]
    puts name
end

#Skipping the header row

lines.each do |line|
    next if line == " ,RegDate,first_Name,last_Name,Email_Address,HomePhone,Street,City,State,Zipcode\n"
    columns = line.split(",")
    name = columns[2]
    puts name
end


row_index = 0
lines.each do |line|
  row_index = row_index + 1
  next if row_index == 1
  columns = line.split(",")
  name = columns[2]
  puts name
end


#Iteration 1: Parsing with CSV

#Switching over to use the CSV library

require 'csv'
puts 'EventManager initialized.'

contents = CSV.open('../event_attendees.csv', headers: true)
contents.each do |row|
  name = row[2]
  puts name
end

#Accessing columns by their names

contents = CSV.open(
  '../event_attendees.csv',
  headers: true,
  header_converters: :symbol
)

contents.each do |row|
  name = row[:first_name]
  puts name
end


#Displaying the zip codes of all attendees

contents = CSV.open(
  '../event_attendees.csv',
  headers: true,
  header_converters: :symbol
)

contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]
  puts "#{name} #{zipcode}"
end

=end

#Iteration 2: Cleaning up our zip codes

require 'csv'
puts 'EventManager initialized.'

contents = CSV.open(
  '../event_attendees.csv',
  headers: true,
  header_converters: :symbol
)

contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]

  # if the zip code is exactly five digits, assume that it is ok
  # if the zip code is more than five digits, truncate it to the first five digits
  # if the zip code is less than five digits, add zeros to the front until it becomes five digits

  puts "#{name} #{zipcode}"
 end

