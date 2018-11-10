require 'test_helper'

class RepuestosSerigrafiaProductosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repuestos_serigrafia_producto = repuestos_serigrafia_productos(:one)
  end

  test "should get index" do
    get repuestos_serigrafia_productos_url
    assert_response :success
  end

  test "should get new" do
    get new_repuestos_serigrafia_producto_url
    assert_response :success
  end

  test "should create repuestos_serigrafia_producto" do
    assert_difference('RepuestosSerigrafiaProducto.count') do
      post repuestos_serigrafia_productos_url, params: { repuestos_serigrafia_producto: { descripcion: @repuestos_serigrafia_producto.descripcion, especificaciones_tecnicas: @repuestos_serigrafia_producto.especificaciones_tecnicas, linea_producto: @repuestos_serigrafia_producto.linea_producto, marca: @repuestos_serigrafia_producto.marca, precio: @repuestos_serigrafia_producto.precio, presentacion: @repuestos_serigrafia_producto.presentacion, titulo: @repuestos_serigrafia_producto.titulo, video: @repuestos_serigrafia_producto.video } }
    end

    assert_redirected_to repuestos_serigrafia_producto_url(RepuestosSerigrafiaProducto.last)
  end

  test "should show repuestos_serigrafia_producto" do
    get repuestos_serigrafia_producto_url(@repuestos_serigrafia_producto)
    assert_response :success
  end

  test "should get edit" do
    get edit_repuestos_serigrafia_producto_url(@repuestos_serigrafia_producto)
    assert_response :success
  end

  test "should update repuestos_serigrafia_producto" do
    patch repuestos_serigrafia_producto_url(@repuestos_serigrafia_producto), params: { repuestos_serigrafia_producto: { descripcion: @repuestos_serigrafia_producto.descripcion, especificaciones_tecnicas: @repuestos_serigrafia_producto.especificaciones_tecnicas, linea_producto: @repuestos_serigrafia_producto.linea_producto, marca: @repuestos_serigrafia_producto.marca, precio: @repuestos_serigrafia_producto.precio, presentacion: @repuestos_serigrafia_producto.presentacion, titulo: @repuestos_serigrafia_producto.titulo, video: @repuestos_serigrafia_producto.video } }
    assert_redirected_to repuestos_serigrafia_producto_url(@repuestos_serigrafia_producto)
  end

  test "should destroy repuestos_serigrafia_producto" do
    assert_difference('RepuestosSerigrafiaProducto.count', -1) do
      delete repuestos_serigrafia_producto_url(@repuestos_serigrafia_producto)
    end

    assert_redirected_to repuestos_serigrafia_productos_url
  end
end
