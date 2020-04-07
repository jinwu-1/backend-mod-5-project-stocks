class PortfoliosController < ApplicationController
    def index
        @portfolios = Portfolio.all
        render json: @portfolios
    end

    def create
        @portfolio = Portfolio.create(portfolio_params)
        render json: @portfolio
    end

    private

    def portfolio_params
        params.permit(:user_id)
    end
end
