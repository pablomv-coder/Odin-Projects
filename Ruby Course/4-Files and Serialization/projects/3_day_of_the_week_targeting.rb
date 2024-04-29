require 'csv'

def peak_registration_days(file_path)
  registration_days = Hash.new(0)

  CSV.foreach(file_path, headers: true) do |row|
    registration_date = DateTime.strptime(row['RegDate'], '%m/%d/%y %H:%M')
    registration_days[registration_date.wday] += 1
  end

  peak_days = registration_days.select { |day, count| count == registration_days.values.max }
  peak_days.keys.map { |day| Date::DAYNAMES[day] }
end


file_path = '../1-Event Manager/event_attendees.csv'
peak_days = peak_registration_days(file_path)
puts "Peak registration days: #{peak_days}"
