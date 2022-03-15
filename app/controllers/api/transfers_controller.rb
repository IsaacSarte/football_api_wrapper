module Api
    class TransfersController < ApplicationController

        def index
            transfers = Football::Client.transfers(params[:player])

            render json: transfers
        end

    end
end
