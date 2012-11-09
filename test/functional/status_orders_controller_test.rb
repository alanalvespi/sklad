require 'test_helper'

class StatusOrdersControllerTest < ActionController::TestCase
  setup do
    @status_order = status_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_order" do
    assert_difference('StatusOrder.count') do
      post :create, status_order: { description: @status_order.description, id_status: @status_order.id_status, notes: @status_order.notes }
    end

    assert_redirected_to status_order_path(assigns(:status_order))
  end

  test "should show status_order" do
    get :show, id: @status_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_order
    assert_response :success
  end

  test "should update status_order" do
    put :update, id: @status_order, status_order: { description: @status_order.description, id_status: @status_order.id_status, notes: @status_order.notes }
    assert_redirected_to status_order_path(assigns(:status_order))
  end

  test "should destroy status_order" do
    assert_difference('StatusOrder.count', -1) do
      delete :destroy, id: @status_order
    end

    assert_redirected_to status_orders_path
  end
end
