require 'test_helper'

class TintaSublimacionProductosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tinta_sublimacion_producto = tinta_sublimacion_productos(:one)
  end

  test "should get index" do
    get tinta_sublimacion_productos_url
    assert_response :success
  end

  test "should get new" do
    get new_tinta_sublimacion_producto_url
    assert_response :success
  end

  test "should create tinta_sublimacion_producto" do
    assert_difference('TintaSublimacionProducto.count') do
      post tinta_sublimacion_productos_url, params: { tinta_sublimacion_producto: { descripcion: @tinta_sublimacion_producto.descripcion, especificaciones_tecnicas: @tinta_sublimacion_producto.especificaciones_tecnicas, linea_producto: @tinta_sublimacion_producto.linea_producto, marca: @tinta_sublimacion_producto.marca, precio: @tinta_sublimacion_producto.precio, presentacion: @tinta_sublimacion_producto.presentacion, titulo: @tinta_sublimacion_producto.titulo, video: @tinta_sublimacion_producto.video } }
    end

    assert_redirected_to tinta_sublimacion_producto_url(TintaSublimacionProducto.last)
  end

  test "should show tinta_sublimacion_producto" do
    get tinta_sublimacion_producto_url(@tinta_sublimacion_producto)
    assert_response :success
  end

  test "should get edit" do
    get edit_tinta_sublimacion_producto_url(@tinta_sublimacion_producto)
    assert_response :success
  end

  test "should update tinta_sublimacion_producto" do
    patch tinta_sublimacion_producto_url(@tinta_sublimacion_producto), params: { tinta_sublimacion_producto: { descripcion: @tinta_sublimacion_producto.descripcion, especificaciones_tecnicas: @tinta_sublimacion_producto.especificaciones_tecnicas, linea_producto: @tinta_sublimacion_producto.linea_producto, marca: @tinta_sublimacion_producto.marca, precio: @tinta_sublimacion_producto.precio, presentacion: @tinta_sublimacion_producto.presentacion, titulo: @tinta_sublimacion_producto.titulo, video: @tinta_sublimacion_producto.video } }
    assert_redirected_to tinta_sublimacion_producto_url(@tinta_sublimacion_producto)
  end

  test "should destroy tinta_sublimacion_producto" do
    assert_difference('TintaSublimacionProducto.count', -1) do
      delete tinta_sublimacion_producto_url(@tinta_sublimacion_producto)
    end

    assert_redirected_to tinta_sublimacion_productos_url
  end
end
