class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show]

  # GET /portfolios
  # GET /portfolios.json
  def index
    @portfolios = Portfolio.all
  end

  # GET /portfolios/1
  # GET /portfolios/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio
      @portfolio = Portfolio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def portfolio_params
      params.require(:portfolio).permit(:project_name, :shorttext, :city, :country, :region, :year, :area, :type_id, :interior, :installation, :research, :blurb, :copy, :img_credits_name, :img_credits_link)
    end
end
