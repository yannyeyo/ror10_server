# frozen_string_literal: true

# serv helper
module ServerHelper
    def self.result_array(num)
      arr = (2..num).map do |elem|
        c = 0;
        (2..elem).each do |i|
          if (elem.to_i) % i == 0 then c+=1
          end
        end
        if c == 1 then elem.to_i
        end
      end.compact
      [arr, arr.map { |el| 2**el -1}]
    end
end