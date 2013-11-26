require 'test_helper'

class PressCategoriesControllerTest < ActionController::TestCase
  setup do
    @press_category = press_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:press_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create press_category" do
    assert_difference('PressCategory.count') do
      post :create, press_category: { name: @press_category.name }
    end

    assert_redirected_to press_category_path(assigns(:press_category))
  end

  test "should show press_category" do
    get :show, id: @press_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @press_category
    assert_response :success
  end

  test "should update press_category" do
    patch :update, id: @press_category, press_category: { name: @press_category.name }
    assert_redirected_to press_category_path(assigns(:press_category))
  end

  test "should destroy press_category" do
    assert_difference('PressCategory.count', -1) do
      delete :destroy, id: @press_category
    end

    assert_redirected_to press_categories_path
  end
end
