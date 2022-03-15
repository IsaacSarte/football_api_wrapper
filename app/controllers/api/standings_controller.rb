module Api
    class StandingsController < ApplicationController

        def index
            standings = Football::Client.standings(params[:id], params[:season])

            render json: standings
        end

    end
end
