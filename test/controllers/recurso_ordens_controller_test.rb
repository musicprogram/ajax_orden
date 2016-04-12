require 'test_helper'

class RecursoOrdensControllerTest < ActionController::TestCase
  setup do
    @recurso_orden = recurso_ordens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recurso_ordens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recurso_orden" do
    assert_difference('RecursoOrden.count') do
      post :create, recurso_orden: { cantidad: @recurso_orden.cantidad, orden_id: @recurso_orden.orden_id, talla: @recurso_orden.talla }
    end

    assert_redirected_to recurso_orden_path(assigns(:recurso_orden))
  end

  test "should show recurso_orden" do
    get :show, id: @recurso_orden
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recurso_orden
    assert_response :success
  end

  test "should update recurso_orden" do
    patch :update, id: @recurso_orden, recurso_orden: { cantidad: @recurso_orden.cantidad, orden_id: @recurso_orden.orden_id, talla: @recurso_orden.talla }
    assert_redirected_to recurso_orden_path(assigns(:recurso_orden))
  end

  test "should destroy recurso_orden" do
    assert_difference('RecursoOrden.count', -1) do
      delete :destroy, id: @recurso_orden
    end

    assert_redirected_to recurso_ordens_path
  end
end
