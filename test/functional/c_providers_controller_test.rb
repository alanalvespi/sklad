require 'test_helper'

class CProvidersControllerTest < ActionController::TestCase
  setup do
    @c_provider = c_providers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c_providers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c_provider" do
    assert_difference('CProvider.count') do
      post :create, c_provider: { name_provider: @c_provider.name_provider }
    end

    assert_redirected_to c_provider_path(assigns(:c_provider))
  end

  test "should show c_provider" do
    get :show, id: @c_provider
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @c_provider
    assert_response :success
  end

  test "should update c_provider" do
    put :update, id: @c_provider, c_provider: { name_provider: @c_provider.name_provider }
    assert_redirected_to c_provider_path(assigns(:c_provider))
  end

  test "should destroy c_provider" do
    assert_difference('CProvider.count', -1) do
      delete :destroy, id: @c_provider
    end

    assert_redirected_to c_providers_path
  end
end
