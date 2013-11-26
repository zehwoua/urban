class Admin::PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]
  before_filter :set_new_type

  # GET /portfolios
  # GET /portfolios.json
  def index
    @portfolios = Portfolio.all
  end

  # GET /portfolios/1
  # GET /portfolios/1.json
  def show
  end

  # GET /portfolios/new
  def new
    @portfolio = Portfolio.new
  end

  # GET /portfolios/1/edit
  def edit
  end

  # POST /portfolios
  # POST /portfolios.json
  def create
    @published = false
    @portfolio = Portfolio.new(portfolio_params)
    @published = true if params.has_key?(:published)
      
    respond_to do |format|
      if @portfolio.save && @portfolio.update_attribute(:published , @published )
        format.html { redirect_to edit_admin_portfolio_path(@portfolio), notice: 'Portfolio was successfully created.' }
        format.json { render action: 'show', status: :created, location: edit_admin_portfolio_path(@portfolio) }
      else
        format.html { render action: 'new' }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /portfolios/1
  # PATCH/PUT /portfolios/1.json
  def update
    @published = false
    @published = true if params.has_key?(:published)

    respond_to do |format|
      if @portfolio.update(portfolio_params) && @portfolio.update_attribute(:published , @published )
        format.html { redirect_to edit_admin_portfolio_path(@portfolio), notice: 'Portfolio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portfolios/1
  # DELETE /portfolios/1.json
  def destroy
    @portfolio.destroy
    respond_to do |format|
      format.html { redirect_to admin_portfolios_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio
      @portfolio = Portfolio.find(params[:id])
    end

    def set_new_type
      @type = Type.new
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def portfolio_params
      params.require(:portfolio).permit(:project_name, :shorttext, :city, :country, :region, :year, :area, :type_id, :interior, :installation, :research, :blurb, :copy, :img_credits_name, :img_credits_link, :published, :portfolio_galleries_attributes => ['id','text','image','_destroy'])
    end
end
