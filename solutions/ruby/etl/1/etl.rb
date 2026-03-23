class ETL
  class << self
    def transform(old_data)
      old_data.each_pair.each_with_object({}) do |(key, values), acc|
        values.each { |value| acc[value.downcase] = key }
      end
    end
  end
end