class SportsTeam

  attr_reader :name, :players, :coach, :points
  attr_writer :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_new_player(new_player)
    @players.push(new_player)
  end

  def does_player_exist(player)
    return players.include?(player)
  end

  def add_result(result)
    @points +=1 if result == "win"
  end

end
