require('minitest/autorun')
require('minitest/reporters')
require_relative('../part_b')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSportsTeam < MiniTest::Test

    def setup

        @team_name = "Sweden"
        @players = ["Malin Bayard", "Rolf-Goran Bengtsson", "Peder Fredricson", "Helena Jonsson"]
        @coach = "Henrik Ankarcrona"

        @team = SportsTeam.new(@team_name, @players, @coach)

    end

    def test_team_name
        assert_equal("Sweden", @team.team_name())
    end

    def test_players
        assert_equal(["Malin Bayard", "Rolf-Goran Bengtsson", "Peder Fredricson", "Helena Jonsson"], @team.players())
        assert_equal(4, @team.players().length)
    end

    def test_coach 
        assert_equal("Henrik Ankarcrona", @team.coach())
    end

    def test_change_coach
        @team.coach = "Henrik von Eckermann"
        assert_equal("Henrik von Eckermann", @team.coach())
    end

    def test_add_player
        @team.add_player("Helena Lundback")
        assert_equal(5, @team.players().length)
    end

    def test_player_is_on_team
        assert_equal(true, @team.player_is_on_team("Rolf-Goran Bengtsson"))
    end

    def test_player_is_not_on_team
        assert_equal(false, @team.player_is_on_team("Sara Emanuelsson"))
    end

    # def test_add_points_property
    #     assert_equal()

end