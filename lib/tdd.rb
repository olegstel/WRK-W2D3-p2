class Array

  def my_uniq
    uniq_array = []
    each { |item| uniq_array << item unless uniq_array.include?(item) }
    uniq_array
  end

  def two_sum
    results = []
    each_with_index do |item, i|
      (i + 1...count).each do |i2|
        unless i == i2
          results << [i, i2] if self[i] + self[i2] == 0
        end
      end
    end

    results
  end
end
