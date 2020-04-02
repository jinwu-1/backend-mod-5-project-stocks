class PortfoliosController < ApplicationController
    def index
        @portfolios = Portfolio.all
        render json: @portfolios
    end
end
