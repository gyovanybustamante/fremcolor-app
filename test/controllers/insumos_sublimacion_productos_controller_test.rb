require 'test_helper'

class InsumosSublimacionProductosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insumos_sublimacion_producto = insumos_sublimacion_productos(:one)
  end

  test "should get index" do
    get insumos_sublimacion_productos_url
    assert_response :success
  end

  test "should get new" do
    get new_insumos_sublimacion_producto_url
    assert_response :success
  end

  test "should create insumos_sublimacion_producto" do
    assert_difference('InsumosSublimacionProducto.count') do
      post insumos_sublimacion_productos_url, params: { insumos_sublimacion_producto: { descripcion: @insumos_sublimacion_producto.descripcion, especificaciones_tecnicas: @insumos_sublimacion_producto.especificaciones_tecnicas, linea_producto: @insumos_sublimacion_producto.linea_producto, marca: @insumos_sublimacion_producto.marca, precio: @insumos_sublimacion_producto.precio, presentacion: @insumos_sublimacion_producto.presentacion, titulo: @insumos_sublimacion_producto.titulo, video: @insumos_sublimacion_producto.video } }
    end

    assert_redirected_to insumos_sublimacion_producto_url(InsumosSublimacionProducto.last)
  end

  test "should show insumos_sublimacion_producto" do
    get insumos_sublimacion_producto_url(@insumos_sublimacion_producto)
    assert_response :success
  end

  test "should get edit" do
    get edit_insumos_sublimacion_producto_url(@insumos_sublimacion_producto)
    assert_response :success
  end

  test "should update insumos_sublimacion_producto" do
    patch insumos_sublimacion_producto_url(@insumos_sublimacion_producto), params: { insumos_sublimacion_producto: { descripcion: @insumos_sublimacion_producto.descripcion, especificaciones_tecnicas: @insumos_sublimacion_producto.especificaciones_tecnicas, linea_producto: @insumos_sublimacion_producto.linea_producto, marca: @insumos_sublimacion_producto.marca, precio: @insumos_sublimacion_producto.precio, presentacion: @insumos_sublimacion_producto.presentacion, titulo: @insumos_sublimacion_producto.titulo, video: @insumos_sublimacion_producto.video } }
    assert_redirected_to insumos_sublimacion_producto_url(@insumos_sublimacion_producto)
  end

  test "should destroy insumos_sublimacion_producto" do
    assert_difference('InsumosSublimacionProducto.count', -1) do
      delete insumos_sublimacion_producto_url(@insumos_sublimacion_producto)
    end

    assert_redirected_to insumos_sublimacion_productos_url
  end
end
