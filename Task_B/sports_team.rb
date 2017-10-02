class SportsTeam
  attr_accessor :team_name, :rowers, :coach, :points

  def initialize(team_name, rowers, coach, points)
    @team_name = team_name
    @rowers = rowers
    @coach = coach
    @points = points
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

  def rower_check(name)
    for rower in @rowers
      return true if rower == name
    end
  end

  def win_or_lose_check(status)
    if status == "win"
      @points += 1
      return "win"
    end
  end


end
