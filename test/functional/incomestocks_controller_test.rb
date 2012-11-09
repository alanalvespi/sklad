require 'test_helper'

class IncomestocksControllerTest < ActionController::TestCase
  setup do
    @incomestock = incomestocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incomestocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incomestock" do
    assert_difference('Incomestock.count') do
      post :create, incomestock: { id_income_stock: @incomestock.id_income_stock, product_name: @incomestock.product_name, product_number: @incomestock.product_number, product_price: @incomestock.product_price, product_pv: @incomestock.product_pv, quantity: @incomestock.quantity }
    end

    assert_redirected_to incomestock_path(assigns(:incomestock))
  end

  test "should show incomestock" do
    get :show, id: @incomestock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incomestock
    assert_response :success
  end

  test "should update incomestock" do
    put :update, id: @incomestock, incomestock: { id_income_stock: @incomestock.id_income_stock, product_name: @incomestock.product_name, product_number: @incomestock.product_number, product_price: @incomestock.product_price, product_pv: @incomestock.product_pv, quantity: @incomestock.quantity }
    assert_redirected_to incomestock_path(assigns(:incomestock))
  end

  test "should destroy incomestock" do
    assert_difference('Incomestock.count', -1) do
      delete :destroy, id: @incomestock
    end

    assert_redirected_to incomestocks_path
  end
end
