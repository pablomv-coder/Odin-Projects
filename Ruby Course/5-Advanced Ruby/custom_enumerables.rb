module Enumerable
    def my_find
      each do |elem|
        return elem if yield(elem)
      end
      nil
    end
end


a = [1, 2, 3]
puts a.my_find { |n| n == 2 } #=> 2
puts a.my_find { |n| n == 10 } #=> nil
