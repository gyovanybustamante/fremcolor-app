require 'test_helper'

class PapelSublimacionProductosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @papel_sublimacion_producto = papel_sublimacion_productos(:one)
  end

  test "should get index" do
    get papel_sublimacion_productos_url
    assert_response :success
  end

  test "should get new" do
    get new_papel_sublimacion_producto_url
    assert_response :success
  end

  test "should create papel_sublimacion_producto" do
    assert_difference('PapelSublimacionProducto.count') do
      post papel_sublimacion_productos_url, params: { papel_sublimacion_producto: { descripcion: @papel_sublimacion_producto.descripcion, especificaciones_tecnicas: @papel_sublimacion_producto.especificaciones_tecnicas, linea_producto: @papel_sublimacion_producto.linea_producto, marca: @papel_sublimacion_producto.marca, precio: @papel_sublimacion_producto.precio, presentacion: @papel_sublimacion_producto.presentacion, titulo: @papel_sublimacion_producto.titulo, video: @papel_sublimacion_producto.video } }
    end

    assert_redirected_to papel_sublimacion_producto_url(PapelSublimacionProducto.last)
  end

  test "should show papel_sublimacion_producto" do
    get papel_sublimacion_producto_url(@papel_sublimacion_producto)
    assert_response :success
  end

  test "should get edit" do
    get edit_papel_sublimacion_producto_url(@papel_sublimacion_producto)
    assert_response :success
  end

  test "should update papel_sublimacion_producto" do
    patch papel_sublimacion_producto_url(@papel_sublimacion_producto), params: { papel_sublimacion_producto: { descripcion: @papel_sublimacion_producto.descripcion, especificaciones_tecnicas: @papel_sublimacion_producto.especificaciones_tecnicas, linea_producto: @papel_sublimacion_producto.linea_producto, marca: @papel_sublimacion_producto.marca, precio: @papel_sublimacion_producto.precio, presentacion: @papel_sublimacion_producto.presentacion, titulo: @papel_sublimacion_producto.titulo, video: @papel_sublimacion_producto.video } }
    assert_redirected_to papel_sublimacion_producto_url(@papel_sublimacion_producto)
  end

  test "should destroy papel_sublimacion_producto" do
    assert_difference('PapelSublimacionProducto.count', -1) do
      delete papel_sublimacion_producto_url(@papel_sublimacion_producto)
    end

    assert_redirected_to papel_sublimacion_productos_url
  end
end
