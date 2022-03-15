module Api
    class LeaguesController < ApplicationController

        def index
            leagues = Football::Client.leagues

            render json: leagues
        end

        def show
            league_details = Football::Client.league_details(params[:id])

            render json: league_details
        end

    end
end
