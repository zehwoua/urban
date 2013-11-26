require 'test_helper'

class AccoladesControllerTest < ActionController::TestCase
  setup do
    @accolade = accolades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accolades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accolade" do
    assert_difference('Accolade.count') do
      post :create, accolade: { accolade_category_id: @accolade.accolade_category_id, additional_info: @accolade.additional_info, description: @accolade.description, link_address: @accolade.link_address, published: @accolade.published, title: @accolade.title }
    end

    assert_redirected_to accolade_path(assigns(:accolade))
  end

  test "should show accolade" do
    get :show, id: @accolade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accolade
    assert_response :success
  end

  test "should update accolade" do
    patch :update, id: @accolade, accolade: { accolade_category_id: @accolade.accolade_category_id, additional_info: @accolade.additional_info, description: @accolade.description, link_address: @accolade.link_address, published: @accolade.published, title: @accolade.title }
    assert_redirected_to accolade_path(assigns(:accolade))
  end

  test "should destroy accolade" do
    assert_difference('Accolade.count', -1) do
      delete :destroy, id: @accolade
    end

    assert_redirected_to accolades_path
  end
end
