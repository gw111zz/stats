module Stat
  module Basic
    def arithmetic_mean(values)
      values.reduce(&:+) / values.length
    end
    alias_method :mean, :arithmetic_mean

    def geometric_mean(values)
      values.reduce(&:*) ** (1.0/values.length)
    end
    
    def median(values)
      n = values.length
      if n.odd? 
        values.sort[n / 2]
      else
        index = n / 2 - 1
        mean values.sort[index, 2]
      end
    end

    def mode(values)
      # Maybe there's a better way to do this...
      values.sort.
        group_by {|i| i }.
        max_by {|k,v| v.length }.
        first
    end
  end
end
