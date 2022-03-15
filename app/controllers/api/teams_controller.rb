module Api
    class TeamsController < ApplicationController

        def index
            teams = Football::Client.teams(params[:id], params[:season])

            render json: teams
        end

        def show
            team_details = Football::Client.team_details(params[:id])

            render json: team_details
        end

    end
end
