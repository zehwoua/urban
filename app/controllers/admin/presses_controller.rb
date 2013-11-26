class Admin::PressesController < ApplicationController
  before_action :set_press, only: [:show, :edit, :update, :destroy]

  # GET /presses
  # GET /presses.json
  def index
    @presses = Press.all
  end

  # GET /presses/1
  # GET /presses/1.json
  def show
  end

  # GET /presses/new
  def new
    @press = Press.new
  end

  # GET /presses/1/edit
  def edit
  end

  # POST /presses
  # POST /presses.json
  def create
    @published = false
    @press = Press.new(press_params)
    @published = true if params.has_key?(:published)

    respond_to do |format|
      if @press.save && @press.update_attribute(:published , @published )
        format.html { redirect_to edit_admin_press_path(@press), notice: 'Press was successfully created.' }
        format.json { render action: 'show', status: :created, location: edit_admin_press_path(@press) }
      else
        format.html { render action: 'new' }
        format.json { render json: @press.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presses/1
  # PATCH/PUT /presses/1.json
  def update
    @published = false
    @published = true if params.has_key?(:published)

    respond_to do |format|
      if @press.update(press_params) && @press.update_attribute(:published , @published )
        format.html { redirect_to edit_admin_press_path(@press), notice: 'Press was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @press.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presses/1
  # DELETE /presses/1.json
  def destroy
    @press.destroy
    respond_to do |format|
      format.html { redirect_to admin_presses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_press
      @press = Press.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def press_params
      params.require(:press).permit(:press_category_id, :description, :title, :additional_info, :quote, :link_address, :published, :image)
    end
end
