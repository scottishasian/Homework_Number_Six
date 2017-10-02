require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../sports_team.rb' )

class TestSportsTeam < MiniTest::Test

  def setup
    @Team1 = SportsTeam.new("HWUBC", ["Kynan","Hope","Stuart","Adam","Michael"], "Graeme")
  end

  def test_team_name
    assert_equal("HWUBC", @Team1.team_name)
  end

  def test_rowers
    assert_equal(["Kynan","Hope","Stuart","Adam","Michael"], @Team1.rowers)
  end

  def test_coach
    assert_equal("Graeme", @Team1.coach)
  end

  def test_new_coach
    @Team1.new_coach("Lee")
    assert_equal("Lee", @Team1.coach)
  end

end
