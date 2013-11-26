class AccoladesController < ApplicationController
  before_action :set_accolade, only: [:show, :edit, :update, :destroy]

  # GET /accolades
  # GET /accolades.json
  def index
    @accolades = Accolade.all
  end

  # GET /accolades/1
  # GET /accolades/1.json
  def show
  end

  # GET /accolades/new
  def new
    @accolade = Accolade.new
  end

  # GET /accolades/1/edit
  def edit
  end

  # POST /accolades
  # POST /accolades.json
  def create
    @accolade = Accolade.new(accolade_params)

    respond_to do |format|
      if @accolade.save
        format.html { redirect_to @accolade, notice: 'Accolade was successfully created.' }
        format.json { render action: 'show', status: :created, location: @accolade }
      else
        format.html { render action: 'new' }
        format.json { render json: @accolade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accolades/1
  # PATCH/PUT /accolades/1.json
  def update
    respond_to do |format|
      if @accolade.update(accolade_params)
        format.html { redirect_to @accolade, notice: 'Accolade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @accolade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accolades/1
  # DELETE /accolades/1.json
  def destroy
    @accolade.destroy
    respond_to do |format|
      format.html { redirect_to accolades_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accolade
      @accolade = Accolade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accolade_params
      params.require(:accolade).permit( :accolade_category_id, :description, :title, :additional_info, :quote, :link_address)
    end
end
