require 'test_helper'

class SeguridadProductosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seguridad_producto = seguridad_productos(:one)
  end

  test "should get index" do
    get seguridad_productos_url
    assert_response :success
  end

  test "should get new" do
    get new_seguridad_producto_url
    assert_response :success
  end

  test "should create seguridad_producto" do
    assert_difference('SeguridadProducto.count') do
      post seguridad_productos_url, params: { seguridad_producto: { descripcion: @seguridad_producto.descripcion, especificaciones_tecnicas: @seguridad_producto.especificaciones_tecnicas, linea_producto: @seguridad_producto.linea_producto, marca: @seguridad_producto.marca, precio: @seguridad_producto.precio, presentacion: @seguridad_producto.presentacion, titulo: @seguridad_producto.titulo, video: @seguridad_producto.video } }
    end

    assert_redirected_to seguridad_producto_url(SeguridadProducto.last)
  end

  test "should show seguridad_producto" do
    get seguridad_producto_url(@seguridad_producto)
    assert_response :success
  end

  test "should get edit" do
    get edit_seguridad_producto_url(@seguridad_producto)
    assert_response :success
  end

  test "should update seguridad_producto" do
    patch seguridad_producto_url(@seguridad_producto), params: { seguridad_producto: { descripcion: @seguridad_producto.descripcion, especificaciones_tecnicas: @seguridad_producto.especificaciones_tecnicas, linea_producto: @seguridad_producto.linea_producto, marca: @seguridad_producto.marca, precio: @seguridad_producto.precio, presentacion: @seguridad_producto.presentacion, titulo: @seguridad_producto.titulo, video: @seguridad_producto.video } }
    assert_redirected_to seguridad_producto_url(@seguridad_producto)
  end

  test "should destroy seguridad_producto" do
    assert_difference('SeguridadProducto.count', -1) do
      delete seguridad_producto_url(@seguridad_producto)
    end

    assert_redirected_to seguridad_productos_url
  end
end
