require('minitest/autorun')
require('minitest/reporters')
require_relative('../part_b')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test

    def setup

        @team_name = "Sweden"
        @players = ["Malin Bayard", "Rolf-Goran Bengtsson", "Peder Fredricson", "Helena Jonsson"]
        @coach = "Henrik Ankarcrona"

    end

    def test_team_name
        team = SportsTeam.new(@team_name, @players, @coach)
        assert_equal("Sweden", team.team_name())
    end

    def test_players
        team = SportsTeam.new(@team_name, @players, @coach)
        assert_equal(["Malin Bayard", "Rolf-Goran Bengtsson", "Peder Fredricson", "Helena Jonsson"], team.players())
        assert_equal(4, team.players().length)
    end

    def test_coach 
        team = SportsTeam.new(@team_name, @players, @coach)
        assert_equal("Henrik Ankarcrona", team.coach())
    end

    # def test_change_coach
    #     team = SportsTeam.new(@team_name, @players, @coach)
    #     assert_equal("Henrik von Eckermann", team.

end