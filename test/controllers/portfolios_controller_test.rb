require 'test_helper'

class PortfoliosControllerTest < ActionController::TestCase
  setup do
    @portfolio = portfolios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:portfolios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create portfolio" do
    assert_difference('Portfolio.count') do
      post :create, portfolio: { area: @portfolio.area, blurb: @portfolio.blurb, city: @portfolio.city, copy: @portfolio.copy, country: @portfolio.country, img_credits_link: @portfolio.img_credits_link, img_credits_name: @portfolio.img_credits_name, installation: @portfolio.installation, interior: @portfolio.interior, project_name: @portfolio.project_name, region: @portfolio.region, research: @portfolio.research, shorttext: @portfolio.shorttext, type_id: @portfolio.type_id, year: @portfolio.year }
    end

    assert_redirected_to portfolio_path(assigns(:portfolio))
  end

  test "should show portfolio" do
    get :show, id: @portfolio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @portfolio
    assert_response :success
  end

  test "should update portfolio" do
    patch :update, id: @portfolio, portfolio: { area: @portfolio.area, blurb: @portfolio.blurb, city: @portfolio.city, copy: @portfolio.copy, country: @portfolio.country, img_credits_link: @portfolio.img_credits_link, img_credits_name: @portfolio.img_credits_name, installation: @portfolio.installation, interior: @portfolio.interior, project_name: @portfolio.project_name, region: @portfolio.region, research: @portfolio.research, shorttext: @portfolio.shorttext, type_id: @portfolio.type_id, year: @portfolio.year }
    assert_redirected_to portfolio_path(assigns(:portfolio))
  end

  test "should destroy portfolio" do
    assert_difference('Portfolio.count', -1) do
      delete :destroy, id: @portfolio
    end

    assert_redirected_to portfolios_path
  end
end
