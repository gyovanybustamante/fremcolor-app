require 'test_helper'

class QuimicosSerigrafiaProductosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quimicos_serigrafia_producto = quimicos_serigrafia_productos(:one)
  end

  test "should get index" do
    get quimicos_serigrafia_productos_url
    assert_response :success
  end

  test "should get new" do
    get new_quimicos_serigrafia_producto_url
    assert_response :success
  end

  test "should create quimicos_serigrafia_producto" do
    assert_difference('QuimicosSerigrafiaProducto.count') do
      post quimicos_serigrafia_productos_url, params: { quimicos_serigrafia_producto: { descripcion: @quimicos_serigrafia_producto.descripcion, especificaciones_tecnicas: @quimicos_serigrafia_producto.especificaciones_tecnicas, linea_producto: @quimicos_serigrafia_producto.linea_producto, marca: @quimicos_serigrafia_producto.marca, precio: @quimicos_serigrafia_producto.precio, presentacion: @quimicos_serigrafia_producto.presentacion, titulo: @quimicos_serigrafia_producto.titulo, video: @quimicos_serigrafia_producto.video } }
    end

    assert_redirected_to quimicos_serigrafia_producto_url(QuimicosSerigrafiaProducto.last)
  end

  test "should show quimicos_serigrafia_producto" do
    get quimicos_serigrafia_producto_url(@quimicos_serigrafia_producto)
    assert_response :success
  end

  test "should get edit" do
    get edit_quimicos_serigrafia_producto_url(@quimicos_serigrafia_producto)
    assert_response :success
  end

  test "should update quimicos_serigrafia_producto" do
    patch quimicos_serigrafia_producto_url(@quimicos_serigrafia_producto), params: { quimicos_serigrafia_producto: { descripcion: @quimicos_serigrafia_producto.descripcion, especificaciones_tecnicas: @quimicos_serigrafia_producto.especificaciones_tecnicas, linea_producto: @quimicos_serigrafia_producto.linea_producto, marca: @quimicos_serigrafia_producto.marca, precio: @quimicos_serigrafia_producto.precio, presentacion: @quimicos_serigrafia_producto.presentacion, titulo: @quimicos_serigrafia_producto.titulo, video: @quimicos_serigrafia_producto.video } }
    assert_redirected_to quimicos_serigrafia_producto_url(@quimicos_serigrafia_producto)
  end

  test "should destroy quimicos_serigrafia_producto" do
    assert_difference('QuimicosSerigrafiaProducto.count', -1) do
      delete quimicos_serigrafia_producto_url(@quimicos_serigrafia_producto)
    end

    assert_redirected_to quimicos_serigrafia_productos_url
  end
end
