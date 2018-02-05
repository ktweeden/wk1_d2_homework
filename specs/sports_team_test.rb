require'minitest/autorun'
require_relative'../sports_team.rb'

class TestSportsTeam < Minitest::Test

  def setup
    @team = SportsTeam.new("CodeClan United", ["Kate", "Craig", "Alex", "Kash", "Finn"], "Darren")
  end

  def test_get_team_name
    assert_equal("CodeClan United", @team.name)
  end

  def test_get_players
    assert_equal(["Kate", "Craig", "Alex", "Kash", "Finn"], @team.players)
  end

  def test_get_coach
    assert_equal("Darren", @team.coach)
  end

  def test_set_coach
    assert_equal("Jarrod", @team.coach = "Jarrod")
  end

  def test_add_new_player
    assert_equal(["Kate", "Craig", "Alex", "Kash", "Finn", "Paul"], @team.add_new_player("Paul"))
  end

  def test_does_player_exist
    assert_equal(true, @team.does_player_exist("Kate"))
    assert_equal(false, @team.does_player_exist("John"))
  end

  def test_add_result
    @team.add_result("win")
    assert_equal(1, @team.points())
  end
end
