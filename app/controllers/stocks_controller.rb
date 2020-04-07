class StocksController < ApplicationController
    
    def index 
        @stocks = Stock.all
        render json: @stocks
    end

    def create
        @stock = Stock.create(stock_params)
        render json: @stock
    end

    def destroy
        @stock = Stock.find(params[:id])
        @stock.destroy
        @stocks = Stock.all
        render json: @stocks
    end

    private

    def stock_params
        params.permit(:symbol, :name, :price, :exchange, :user_id)
    end
    
end
