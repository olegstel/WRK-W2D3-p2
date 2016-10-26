class TowersOfHanoi

  attr_reader :towers

  def initialize(towers = ([[3, 2, 1], [], []]))
    @towers = towers
  end

  def move(start_tower, end_tower)
    @towers[end_tower] << @towers[start_tower].pop
  end

  def valid_move?(start_tower, end_tower)
    return false if @towers[start_tower].empty?
    return true if @towers[end_tower].empty?
    return false if @towers[start_tower].last > @towers[end_tower].last
    true
  end

  def won?
    @towers[1].count == 3 || @towers[2].count == 3
  end
end
