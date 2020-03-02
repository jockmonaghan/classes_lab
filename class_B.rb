
class SportsTeam

  attr_accessor :points, :players, :coach_name

  def initialize (input_team_name, input_players, input_coach_name)
    @team_name = input_team_name
    @players = input_players
    @coach_name = input_coach_name
    @points = 0
  end


def team_name
  return @team_name
end

def players
  return @players
end

def coach_name
  return @coach_name
end

def set_coach_name(new_name)
@coach_name = new_name
end

def add_new_player(players, new_player)
players = @players + new_player
end

def check_player(player_name)
  if @players.include?(player_name)
    return true
  end
end

def points
  return @points
end

def add_points_if_win
  @points += 1 if win = true
end

end
