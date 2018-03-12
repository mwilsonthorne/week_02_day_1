require('minitest/autorun')
require_relative('../sports_team.rb')

class TestSportsTeam < Minitest::Test

  def test_sports__getters
    sports = SportsTeam.new("Scotland", "Gregor")

    assert_equal("Scotland", sports.team_name())
    assert_equal("Gregor", sports.team_coach())

  end

  def test_sports__setters
    sports = SportsTeam.new("Scotland", "Gregor")

    sports.team_name = "Ecosse"
    sports.team_coach = "Vern"

    assert_equal("Ecosse", sports.team_name())
    assert_equal("Vern", sports.team_coach())
  end




end
