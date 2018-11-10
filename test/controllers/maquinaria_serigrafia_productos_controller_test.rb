require 'test_helper'

class MaquinariaSerigrafiaProductosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maquinaria_serigrafia_producto = maquinaria_serigrafia_productos(:one)
  end

  test "should get index" do
    get maquinaria_serigrafia_productos_url
    assert_response :success
  end

  test "should get new" do
    get new_maquinaria_serigrafia_producto_url
    assert_response :success
  end

  test "should create maquinaria_serigrafia_producto" do
    assert_difference('MaquinariaSerigrafiaProducto.count') do
      post maquinaria_serigrafia_productos_url, params: { maquinaria_serigrafia_producto: { descripcion: @maquinaria_serigrafia_producto.descripcion, especificaciones_tecnicas: @maquinaria_serigrafia_producto.especificaciones_tecnicas, linea_producto: @maquinaria_serigrafia_producto.linea_producto, marca: @maquinaria_serigrafia_producto.marca, precio: @maquinaria_serigrafia_producto.precio, presentacion: @maquinaria_serigrafia_producto.presentacion, titulo: @maquinaria_serigrafia_producto.titulo, video: @maquinaria_serigrafia_producto.video } }
    end

    assert_redirected_to maquinaria_serigrafia_producto_url(MaquinariaSerigrafiaProducto.last)
  end

  test "should show maquinaria_serigrafia_producto" do
    get maquinaria_serigrafia_producto_url(@maquinaria_serigrafia_producto)
    assert_response :success
  end

  test "should get edit" do
    get edit_maquinaria_serigrafia_producto_url(@maquinaria_serigrafia_producto)
    assert_response :success
  end

  test "should update maquinaria_serigrafia_producto" do
    patch maquinaria_serigrafia_producto_url(@maquinaria_serigrafia_producto), params: { maquinaria_serigrafia_producto: { descripcion: @maquinaria_serigrafia_producto.descripcion, especificaciones_tecnicas: @maquinaria_serigrafia_producto.especificaciones_tecnicas, linea_producto: @maquinaria_serigrafia_producto.linea_producto, marca: @maquinaria_serigrafia_producto.marca, precio: @maquinaria_serigrafia_producto.precio, presentacion: @maquinaria_serigrafia_producto.presentacion, titulo: @maquinaria_serigrafia_producto.titulo, video: @maquinaria_serigrafia_producto.video } }
    assert_redirected_to maquinaria_serigrafia_producto_url(@maquinaria_serigrafia_producto)
  end

  test "should destroy maquinaria_serigrafia_producto" do
    assert_difference('MaquinariaSerigrafiaProducto.count', -1) do
      delete maquinaria_serigrafia_producto_url(@maquinaria_serigrafia_producto)
    end

    assert_redirected_to maquinaria_serigrafia_productos_url
  end
end
