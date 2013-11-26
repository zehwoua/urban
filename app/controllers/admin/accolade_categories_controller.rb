class Admin::AccoladeCategoriesController < ApplicationController
  before_action :set_accolade_category, only: [:show, :edit, :update, :destroy]

  # GET /accolade_categories
  # GET /accolade_categories.json
  def index
    @accolade_categories = AccoladeCategory.all
  end


  # GET /accolade_categories/new
  def new
    @accolade_category = AccoladeCategory.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @accolade_category }
      format.js
    end
  end

  # GET /accolade_categories/1/edit
  def edit
  end

  # POST /accolade_categories
  # POST /accolade_categories.json
  def create
    @accolade_category = AccoladeCategory.new(accolade_category_params)

    respond_to do |format|
      if @accolade_category.save
        format.html { redirect_to edit_admin_accolade_category_path(@accolade_category), notice: 'Accolade category was successfully created.' }
        format.json { render action: 'show', status: :created, location: edit_admin_accolade_category_path(@accolade_category)}
        format.js
      else
        format.html { render action: 'new' }
        format.json { render json: @accolade_category.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /accolade_categories/1
  # PATCH/PUT /accolade_categories/1.json
  def update
    respond_to do |format|
      if @accolade_category.update(accolade_category_params)
        format.html { redirect_to edit_admin_accolade_category_path(@accolade_category), notice: 'Accolade category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @accolade_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accolade_categories/1
  # DELETE /accolade_categories/1.json
  def destroy
    @accolade_category.destroy
    respond_to do |format|
      format.html { redirect_to admin_accolade_categories_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accolade_category
      @accolade_category = AccoladeCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accolade_category_params
      params.require(:accolade_category).permit(:name)
    end
end
