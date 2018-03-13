require('minitest/autorun')
require_relative('../sports_team.rb')

class TestSportsTeam < Minitest::Test

  def test_sports__getters
    sports = SportsTeam.new("Scotland", "Gregor")

    assert_equal("Scotland", sports.team_name)
    assert_equal("Gregor", sports.team_coach)

  end

  def test_sports__setters
    sports = SportsTeam.new("Scotland", "Gregor")

    sports.team_name = "Ecosse"
    sports.team_coach = "Vern"

    assert_equal("Ecosse", sports.team_name)
    assert_equal("Vern", sports.team_coach)
  end

  def test_add_player
    sports = SportsTeam.new("Scotland", "Gregor")
    sports.add_player("Greig Laidlaw")
    assert_equal(1, sports.team_players.count)
  end

  def test_check_player_in_team__returns_true
    sports = SportsTeam.new("Scotland", "Gregor")
    sports.add_player("Greig Laidlaw")
    result = sports.check_player_in_team("Greig Laidlaw")
    assert_equal(true, result)
  end

  def test_check_player_in_team__returns_false
    sports = SportsTeam.new("Scotland", "Gregor")
    sports.add_player("Greig Laidlaw")
    result = sports.check_player_in_team("Roy Laidlaw")
    assert_equal(false, result)
  end

  def test_team_players_starts_empty
    sports = SportsTeam.new("Scotland", "Gregor")
    assert_equal(0, sports.team_players.count)
  end

  def test_team_points_start_at_zero
    sports = SportsTeam.new("Scotland", "Gregor")
    assert_equal(0, sports.points)
  end

  def test_team_wins_points_increase_by_3
    sports = SportsTeam.new("Scotland", "Gregor")
    sports.points_system("win")
    assert_equal(3, sports.points)
  end

  def test_team_loses_points_no_increase
    sports = SportsTeam.new("Scotland", "Gregor")
    sports.points_system("lose")
    assert_equal(0, sports.points)
  end

  def test_team_draw_points_increase_by_1
    sports = SportsTeam.new("Scotland", "Gregor")
    sports.points_system("draw")
    assert_equal(1, sports.points)
  end



end
