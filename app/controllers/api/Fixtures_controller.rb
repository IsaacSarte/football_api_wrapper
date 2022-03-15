module Api
    class FixturesController < ApplicationController

        def index
            fixtures = Football::Client.fixtures(params[:id], params[:season])

            render json: fixtures
        end

        def show
            fixtures_details = Football::Client.fixtures_live(params[:id], params[:season], params[:live])

            render json: fixtures_details
        end

    end
end
