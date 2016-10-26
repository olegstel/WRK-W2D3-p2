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

  def my_transpose
    return self if first.empty?

    results = []
    (0...count).each do |i|
      sub_array = []
      (0...count).each do |j|
        sub_array << self[j][i]
      end
      results << sub_array
    end

    results
  end

  def stock_picker
    best_days = Hash.new(0)
    (0...count).each do |i|
      (i + 1...count).each do |j|
        best_days[[i, j]] = self[j] - self[i]
      end
    end

    best_days.max_by { |key, value| value }.first
  end
end
