require 'test_helper'

class AccoladeCategoriesControllerTest < ActionController::TestCase
  setup do
    @accolade_category = accolade_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accolade_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accolade_category" do
    assert_difference('AccoladeCategory.count') do
      post :create, accolade_category: { name: @accolade_category.name }
    end

    assert_redirected_to accolade_category_path(assigns(:accolade_category))
  end

  test "should show accolade_category" do
    get :show, id: @accolade_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accolade_category
    assert_response :success
  end

  test "should update accolade_category" do
    patch :update, id: @accolade_category, accolade_category: { name: @accolade_category.name }
    assert_redirected_to accolade_category_path(assigns(:accolade_category))
  end

  test "should destroy accolade_category" do
    assert_difference('AccoladeCategory.count', -1) do
      delete :destroy, id: @accolade_category
    end

    assert_redirected_to accolade_categories_path
  end
end
