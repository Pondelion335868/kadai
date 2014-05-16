require 'test_helper'

class FundsControllerTest < ActionController::TestCase
  setup do
    @fund = funds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:funds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fund" do
    assert_difference('Fund.count') do
      post :create, fund: { apr14: @fund.apr14, aug14: @fund.aug14, dec14: @fund.dec14, feb15: @fund.feb15, jan15: @fund.jan15, jul14: @fund.jul14, jun14: @fund.jun14, mar15: @fund.mar15, may14: @fund.may14, name: @fund.name, nov14: @fund.nov14, oct14: @fund.oct14, sep14: @fund.sep14 }
    end

    assert_redirected_to fund_path(assigns(:fund))
  end

  test "should show fund" do
    get :show, id: @fund
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fund
    assert_response :success
  end

  test "should update fund" do
    patch :update, id: @fund, fund: { apr14: @fund.apr14, aug14: @fund.aug14, dec14: @fund.dec14, feb15: @fund.feb15, jan15: @fund.jan15, jul14: @fund.jul14, jun14: @fund.jun14, mar15: @fund.mar15, may14: @fund.may14, name: @fund.name, nov14: @fund.nov14, oct14: @fund.oct14, sep14: @fund.sep14 }
    assert_redirected_to fund_path(assigns(:fund))
  end

  test "should destroy fund" do
    assert_difference('Fund.count', -1) do
      delete :destroy, id: @fund
    end

    assert_redirected_to funds_path
  end
end
