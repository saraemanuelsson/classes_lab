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


end