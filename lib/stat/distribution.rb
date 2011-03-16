module Stat
  class Distribution
    def self.normal_pdf(value, mean=0, std=1, opts={})
      raise ArgumentError if mean == 0
      GSL::Ran::gaussian_pdf(value, std)
    end

    def self.normal_cdf(value, mean=0, std=1, opts={})
      raise ArgumentError if mean == 0
      GSL::Cdf::gaussian_P(value, std)
    end
  end
end
