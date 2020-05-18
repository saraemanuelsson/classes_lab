class SportsTeam

    attr_accessor :coach
    attr_reader :team_name, :players
    
    def initialize(team_name, players, coach)
        @team_name = team_name
        @players = players
        @coach = coach
    end

end