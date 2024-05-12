class PortfoliosController < ApplicationController

  before_action :set_portfolio, only: [:edit, :update, :show, :destroy]

  def index
    @portfolios = Portfolio.all
  end

  def new
    @portfolio = Portfolio.new

  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to portfolios_path, notice: "portfolio was successfully created." }
        format.json { render :show, status: :created, location: @portfolio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit

  end

  def update
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)

  end

  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end

end
