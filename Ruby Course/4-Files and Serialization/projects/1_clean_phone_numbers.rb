def clean_phone_number(phone_number)

    phone_number.gsub!(/\D/, '')

    return 'Bad number' if phone_number.length < 10
  
    return phone_number if phone_number.length == 10
  
    if phone_number.length == 11 && phone_number[0] == '1'
      return phone_number[1..-1]
    end
  
    return 'Bad number' if phone_number.length == 11 && phone_number[0] != '1'
  
    return 'Bad number'
end
  

puts clean_phone_number('123-456-7890')     # Output: Bad number
puts clean_phone_number('(123) 456-7890')   # Output: 1234567890
puts clean_phone_number('11234567890')      # Output: 1234567890
puts clean_phone_number('23456789012')      # Output: Bad number
  