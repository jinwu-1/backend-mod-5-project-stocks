class StocksController < ApplicationController

    def index
        @stocks = Stock.all
        render json: @stocks
    end
    
    def create
        @stock = Stock.create(stock_params)
        render json: @stock
    end

    def stock_params
        params.permit(:symbol, :name, :price, :exchange, :portfolio_id)
    end
    
end
