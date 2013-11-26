class Admin::PressCategoriesController < ApplicationController
  before_action :set_press_category, only: [:show, :edit, :update, :destroy]

  # GET /press_categories
  # GET /press_categories.json
  def index
    @press_categories = PressCategory.all
  end

  # GET /press_categories/new
  def new
    @press_category = PressCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @press_category }
      format.js
    end
  end

  # GET /press_categories/1/edit
  def edit
  end

  # POST /press_categories
  # POST /press_categories.json
  def create
    @press_category = PressCategory.new(press_category_params)

    respond_to do |format|
      if @press_category.save
        format.html { redirect_to edit_admin_press_category_path(@press_category), notice: 'Press category was successfully created.' }
        format.json { render action: 'show', status: :created, location: edit_admin_press_category_path(@press_category) }
        format.js
      else
        format.html { render action: 'new' }
        format.json { render json: @press_category.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /press_categories/1
  # PATCH/PUT /press_categories/1.json
  def update
    respond_to do |format|
      if @press_category.update(press_category_params)
        format.html { redirect_to edit_admin_press_category_path(@press_category), notice: 'Press category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @press_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /press_categories/1
  # DELETE /press_categories/1.json
  def destroy
    @press_category.destroy
    respond_to do |format|
      format.html { redirect_to admin_press_categories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_press_category
      @press_category = PressCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def press_category_params
      params.require(:press_category).permit(:name)
    end
end
