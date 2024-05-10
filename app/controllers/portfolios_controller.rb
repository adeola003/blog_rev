class PortfoliosController < ApplicationController

  def index
    @portfolios = Portfolio.all
  end

  def new
    @portfolio = Portfolio.new

  end

  def create

  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)

  end

end
