class SportsTeam

    attr_accessor :coach, :points
    attr_reader :team_name, :players
    
    def initialize(team_name, players, coach)
        @team_name = team_name
        @players = players
        @coach = coach
        @points = 0
    end

    def add_player(new_player)
        @players << new_player
    end

    def player_is_on_team(player)
        @players.include?(player)
    end

    def assign_points(my_team_score, other_team_score)
        @points += 1 if my_team_score > other_team_score
        @points -= 1 if my_team_score < other_team_score && @points > 0
        @points += 0 if my_team_score == other_team_score
    end

end