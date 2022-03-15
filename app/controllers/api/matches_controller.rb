module Api
    class MatchesController < ApplicationController

        def index
            matches = Football::Client.matches(params[:id], params[:season])

            render json: matches
        end

        def show
            matches_details = Football::Client.matches_live(params[:id], params[:season], params[:live])

            render json: matches_details
        end

    end
end
