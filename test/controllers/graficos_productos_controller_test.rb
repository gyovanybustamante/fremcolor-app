require 'test_helper'

class GraficosProductosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @graficos_producto = graficos_productos(:one)
  end

  test "should get index" do
    get graficos_productos_url
    assert_response :success
  end

  test "should get new" do
    get new_graficos_producto_url
    assert_response :success
  end

  test "should create graficos_producto" do
    assert_difference('GraficosProducto.count') do
      post graficos_productos_url, params: { graficos_producto: { descripcion: @graficos_producto.descripcion, especificaciones_tecnicas: @graficos_producto.especificaciones_tecnicas, linea_producto: @graficos_producto.linea_producto, marca: @graficos_producto.marca, precio: @graficos_producto.precio, presentacion: @graficos_producto.presentacion, titulo: @graficos_producto.titulo, video: @graficos_producto.video } }
    end

    assert_redirected_to graficos_producto_url(GraficosProducto.last)
  end

  test "should show graficos_producto" do
    get graficos_producto_url(@graficos_producto)
    assert_response :success
  end

  test "should get edit" do
    get edit_graficos_producto_url(@graficos_producto)
    assert_response :success
  end

  test "should update graficos_producto" do
    patch graficos_producto_url(@graficos_producto), params: { graficos_producto: { descripcion: @graficos_producto.descripcion, especificaciones_tecnicas: @graficos_producto.especificaciones_tecnicas, linea_producto: @graficos_producto.linea_producto, marca: @graficos_producto.marca, precio: @graficos_producto.precio, presentacion: @graficos_producto.presentacion, titulo: @graficos_producto.titulo, video: @graficos_producto.video } }
    assert_redirected_to graficos_producto_url(@graficos_producto)
  end

  test "should destroy graficos_producto" do
    assert_difference('GraficosProducto.count', -1) do
      delete graficos_producto_url(@graficos_producto)
    end

    assert_redirected_to graficos_productos_url
  end
end
