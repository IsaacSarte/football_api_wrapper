module Football
    class Client
        # Get all leagues
        def self.leagues
            response = Request.call('get', '/leagues')
        end

        # Get a specific league by league id number
        def self.league_details(id)
            response = Request.call("get", "/leagues/?id=#{id}")
        end

        # A league is played per season, check the teams of the league per season because bottom 3 of a league is being relegated to a lower league
        def self.teams(id, season)
            response = Request.call("get", "/teams/?league=#{id}&season=#{season}")
        end

        # Get team details outside all leagues
        def self.team_details(id)
            response = Request.call("get", "/teams/?id=#{id}")
        end

        # Get standings of a league per season, it can show the top 4 and the bottom 3 of a league per season
        def self.standings(id, season)
            response = Request.call("get", "/standings/?league=#{id}&season=#{season}")
        end

        # Get fixtures of a league per season
        def self.matches(id, season)
            response = Request.call("get", "/fixtures/?league=#{id}&season=#{season}")
        end

        # Get all live fixtures of a league per season
        def self.matches_live(id, season, live)
            response = Request.call("get", "/fixtures/?league=#{id}&season=#{season}&live=#{live}")
        end

        # Get all transfer details of a player
        def self.transfers(player_id)
            response = Request.call("get", "/transfers/?player=#{player_id}")
        end

    end
end
