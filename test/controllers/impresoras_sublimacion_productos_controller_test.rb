require 'test_helper'

class ImpresorasSublimacionProductosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @impresoras_sublimacion_producto = impresoras_sublimacion_productos(:one)
  end

  test "should get index" do
    get impresoras_sublimacion_productos_url
    assert_response :success
  end

  test "should get new" do
    get new_impresoras_sublimacion_producto_url
    assert_response :success
  end

  test "should create impresoras_sublimacion_producto" do
    assert_difference('ImpresorasSublimacionProducto.count') do
      post impresoras_sublimacion_productos_url, params: { impresoras_sublimacion_producto: { descripcion: @impresoras_sublimacion_producto.descripcion, especificaciones_tecnicas: @impresoras_sublimacion_producto.especificaciones_tecnicas, linea_producto: @impresoras_sublimacion_producto.linea_producto, marca: @impresoras_sublimacion_producto.marca, precio: @impresoras_sublimacion_producto.precio, presentacion: @impresoras_sublimacion_producto.presentacion, titulo: @impresoras_sublimacion_producto.titulo, video: @impresoras_sublimacion_producto.video } }
    end

    assert_redirected_to impresoras_sublimacion_producto_url(ImpresorasSublimacionProducto.last)
  end

  test "should show impresoras_sublimacion_producto" do
    get impresoras_sublimacion_producto_url(@impresoras_sublimacion_producto)
    assert_response :success
  end

  test "should get edit" do
    get edit_impresoras_sublimacion_producto_url(@impresoras_sublimacion_producto)
    assert_response :success
  end

  test "should update impresoras_sublimacion_producto" do
    patch impresoras_sublimacion_producto_url(@impresoras_sublimacion_producto), params: { impresoras_sublimacion_producto: { descripcion: @impresoras_sublimacion_producto.descripcion, especificaciones_tecnicas: @impresoras_sublimacion_producto.especificaciones_tecnicas, linea_producto: @impresoras_sublimacion_producto.linea_producto, marca: @impresoras_sublimacion_producto.marca, precio: @impresoras_sublimacion_producto.precio, presentacion: @impresoras_sublimacion_producto.presentacion, titulo: @impresoras_sublimacion_producto.titulo, video: @impresoras_sublimacion_producto.video } }
    assert_redirected_to impresoras_sublimacion_producto_url(@impresoras_sublimacion_producto)
  end

  test "should destroy impresoras_sublimacion_producto" do
    assert_difference('ImpresorasSublimacionProducto.count', -1) do
      delete impresoras_sublimacion_producto_url(@impresoras_sublimacion_producto)
    end

    assert_redirected_to impresoras_sublimacion_productos_url
  end
end
