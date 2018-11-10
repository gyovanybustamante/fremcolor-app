require 'test_helper'

class PlanchasSublimacionProductosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @planchas_sublimacion_producto = planchas_sublimacion_productos(:one)
  end

  test "should get index" do
    get planchas_sublimacion_productos_url
    assert_response :success
  end

  test "should get new" do
    get new_planchas_sublimacion_producto_url
    assert_response :success
  end

  test "should create planchas_sublimacion_producto" do
    assert_difference('PlanchasSublimacionProducto.count') do
      post planchas_sublimacion_productos_url, params: { planchas_sublimacion_producto: { descripcion: @planchas_sublimacion_producto.descripcion, especificaciones_tecnicas: @planchas_sublimacion_producto.especificaciones_tecnicas, linea_producto: @planchas_sublimacion_producto.linea_producto, marca: @planchas_sublimacion_producto.marca, precio: @planchas_sublimacion_producto.precio, presentacion: @planchas_sublimacion_producto.presentacion, titulo: @planchas_sublimacion_producto.titulo, video: @planchas_sublimacion_producto.video } }
    end

    assert_redirected_to planchas_sublimacion_producto_url(PlanchasSublimacionProducto.last)
  end

  test "should show planchas_sublimacion_producto" do
    get planchas_sublimacion_producto_url(@planchas_sublimacion_producto)
    assert_response :success
  end

  test "should get edit" do
    get edit_planchas_sublimacion_producto_url(@planchas_sublimacion_producto)
    assert_response :success
  end

  test "should update planchas_sublimacion_producto" do
    patch planchas_sublimacion_producto_url(@planchas_sublimacion_producto), params: { planchas_sublimacion_producto: { descripcion: @planchas_sublimacion_producto.descripcion, especificaciones_tecnicas: @planchas_sublimacion_producto.especificaciones_tecnicas, linea_producto: @planchas_sublimacion_producto.linea_producto, marca: @planchas_sublimacion_producto.marca, precio: @planchas_sublimacion_producto.precio, presentacion: @planchas_sublimacion_producto.presentacion, titulo: @planchas_sublimacion_producto.titulo, video: @planchas_sublimacion_producto.video } }
    assert_redirected_to planchas_sublimacion_producto_url(@planchas_sublimacion_producto)
  end

  test "should destroy planchas_sublimacion_producto" do
    assert_difference('PlanchasSublimacionProducto.count', -1) do
      delete planchas_sublimacion_producto_url(@planchas_sublimacion_producto)
    end

    assert_redirected_to planchas_sublimacion_productos_url
  end
end
