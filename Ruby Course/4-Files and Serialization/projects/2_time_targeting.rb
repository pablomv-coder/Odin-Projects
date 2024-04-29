require 'csv'

def peak_registration_hours(file_path)
  registration_hours = Hash.new(0)

  CSV.foreach(file_path, headers: true) do |row|
    registration_time = DateTime.strptime(row['RegDate'], '%m/%d/%y %H:%M')
    registration_hours[registration_time.hour] += 1
  end

  peak_hours = registration_hours.select { |hour, count| count == registration_hours.values.max }
  peak_hours.keys
end


file_path = '../1-Event Manager/event_attendees.csv'
peak_hours = peak_registration_hours(file_path)
puts "Peak registration hours: #{peak_hours}"
