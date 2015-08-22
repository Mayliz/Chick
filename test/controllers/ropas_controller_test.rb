require 'test_helper'

class RopasControllerTest < ActionController::TestCase
  setup do
    @ropa = ropas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ropas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ropa" do
    assert_difference('Ropa.count') do
      post :create, ropa: { nombre: @ropa.nombre, picture: @ropa.picture, tipo: @ropa.tipo }
    end

    assert_redirected_to ropa_path(assigns(:ropa))
  end

  test "should show ropa" do
    get :show, id: @ropa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ropa
    assert_response :success
  end

  test "should update ropa" do
    patch :update, id: @ropa, ropa: { nombre: @ropa.nombre, picture: @ropa.picture, tipo: @ropa.tipo }
    assert_redirected_to ropa_path(assigns(:ropa))
  end

  test "should destroy ropa" do
    assert_difference('Ropa.count', -1) do
      delete :destroy, id: @ropa
    end

    assert_redirected_to ropas_path
  end
end
