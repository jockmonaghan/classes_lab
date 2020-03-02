require('minitest/autorun')
require('minitest/reporters')
require_relative('../class_B')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportsTeam < Minitest::Test

  def test_team_name
    team = SportsTeam.new("Tigers",["Bill","Peter"],"Alex")
    assert_equal("Tigers", team.team_name)
  end

  def test_players
    team = SportsTeam.new("Tigers",["Bill","Peter"],"Alex")
    assert_equal(["Bill", "Peter"], team.players)
  end

  def test_coach_name
    team = SportsTeam.new("Tigers",["Bill","Peter"],"Alex")
    assert_equal("Alex", team.coach_name)
  end

def test_set_coach_name
  team = SportsTeam.new("Tigers",["Bill","Peter"],"Alex")
  team.coach_name = "Pep"
  assert_equal("Pep", team.coach_name)
end

def test_add_new_player
  team = SportsTeam.new("Tigers",["Bill","Peter"],"Alex")
    team.players.push("Bob")
    assert_equal(["Bill","Peter", "Bob"],team.players)
end

def test_check_player
  team = SportsTeam.new("Tigers",["Bill","Peter"],"Alex")
  assert_equal(true, team.check_player("Bill"))
end

def test_points
team = SportsTeam.new(["Tigers"],["Bill","Peter"],"Alex")
assert_equal(0, team.points)
end

def test_add_points_if_win
  team = SportsTeam.new(["Tigers"],["Bill","Peter"],"Alex")
  win = true
  assert_equal(1, team.add_points_if_win)
end




end
