require 'test_helper'

class InsumosSerigrafiaProductosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insumos_serigrafia_producto = insumos_serigrafia_productos(:one)
  end

  test "should get index" do
    get insumos_serigrafia_productos_url
    assert_response :success
  end

  test "should get new" do
    get new_insumos_serigrafia_producto_url
    assert_response :success
  end

  test "should create insumos_serigrafia_producto" do
    assert_difference('InsumosSerigrafiaProducto.count') do
      post insumos_serigrafia_productos_url, params: { insumos_serigrafia_producto: { descripcion: @insumos_serigrafia_producto.descripcion, especificaciones_tecnicas: @insumos_serigrafia_producto.especificaciones_tecnicas, linea_producto: @insumos_serigrafia_producto.linea_producto, marca: @insumos_serigrafia_producto.marca, precio: @insumos_serigrafia_producto.precio, presentacion: @insumos_serigrafia_producto.presentacion, titulo: @insumos_serigrafia_producto.titulo, video: @insumos_serigrafia_producto.video } }
    end

    assert_redirected_to insumos_serigrafia_producto_url(InsumosSerigrafiaProducto.last)
  end

  test "should show insumos_serigrafia_producto" do
    get insumos_serigrafia_producto_url(@insumos_serigrafia_producto)
    assert_response :success
  end

  test "should get edit" do
    get edit_insumos_serigrafia_producto_url(@insumos_serigrafia_producto)
    assert_response :success
  end

  test "should update insumos_serigrafia_producto" do
    patch insumos_serigrafia_producto_url(@insumos_serigrafia_producto), params: { insumos_serigrafia_producto: { descripcion: @insumos_serigrafia_producto.descripcion, especificaciones_tecnicas: @insumos_serigrafia_producto.especificaciones_tecnicas, linea_producto: @insumos_serigrafia_producto.linea_producto, marca: @insumos_serigrafia_producto.marca, precio: @insumos_serigrafia_producto.precio, presentacion: @insumos_serigrafia_producto.presentacion, titulo: @insumos_serigrafia_producto.titulo, video: @insumos_serigrafia_producto.video } }
    assert_redirected_to insumos_serigrafia_producto_url(@insumos_serigrafia_producto)
  end

  test "should destroy insumos_serigrafia_producto" do
    assert_difference('InsumosSerigrafiaProducto.count', -1) do
      delete insumos_serigrafia_producto_url(@insumos_serigrafia_producto)
    end

    assert_redirected_to insumos_serigrafia_productos_url
  end
end
