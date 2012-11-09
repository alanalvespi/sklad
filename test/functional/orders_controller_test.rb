require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { c_bill_id: @order.c_bill_id, c_product_id: @order.c_product_id, c_product_name: @order.c_product_name, c_status_order_id: @order.c_status_order_id, comments: @order.comments, partner_name: @order.partner_name, percent_ship: @order.percent_ship, price_pz: @order.price_pz, pv_pz: @order.pv_pz, quantity: @order.quantity, subtotal_product: @order.subtotal_product, subtotal_pv: @order.subtotal_pv }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    put :update, id: @order, order: { c_bill_id: @order.c_bill_id, c_product_id: @order.c_product_id, c_product_name: @order.c_product_name, c_status_order_id: @order.c_status_order_id, comments: @order.comments, partner_name: @order.partner_name, percent_ship: @order.percent_ship, price_pz: @order.price_pz, pv_pz: @order.pv_pz, quantity: @order.quantity, subtotal_product: @order.subtotal_product, subtotal_pv: @order.subtotal_pv }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
