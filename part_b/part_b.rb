class SportsTeam

    def initialize(team_name, players, coach)
        @team_name = team_name
        @players = players
        @coach = coach
    end

    def team_name()
        return @team_name
    end

    def players()
        return @players
    end

end