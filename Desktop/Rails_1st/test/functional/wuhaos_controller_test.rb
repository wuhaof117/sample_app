require 'test_helper'

class WuhaosControllerTest < ActionController::TestCase
  setup do
    @wuhao = wuhaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wuhaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wuhao" do
    assert_difference('Wuhao.count') do
      post :create, wuhao: @wuhao.attributes
    end

    assert_redirected_to wuhao_path(assigns(:wuhao))
  end

  test "should show wuhao" do
    get :show, id: @wuhao.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wuhao.to_param
    assert_response :success
  end

  test "should update wuhao" do
    put :update, id: @wuhao.to_param, wuhao: @wuhao.attributes
    assert_redirected_to wuhao_path(assigns(:wuhao))
  end

  test "should destroy wuhao" do
    assert_difference('Wuhao.count', -1) do
      delete :destroy, id: @wuhao.to_param
    end

    assert_redirected_to wuhaos_path
  end
end
