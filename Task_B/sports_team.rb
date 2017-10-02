class SportsTeam
  attr_accessor :team_name, :rowers, :coach

  def initialize(team_name, rowers, coach)
    @team_name = team_name
    @rowers = rowers
    @coach = coach
  end

  # def team_name
  #   return @team_name
  # end
  #
  # def rowers
  #   return @rowers
  # end
  #
  # def coach
  #   return @coach
  # end

  # def new_coach(name)
  #   @coach = name
  # end

  def new_rower(name)
    @rowers.push(name)
  end


end
