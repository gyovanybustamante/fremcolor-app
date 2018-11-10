require 'test_helper'

class QuimicosProductosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quimicos_producto = quimicos_productos(:one)
  end

  test "should get index" do
    get quimicos_productos_url
    assert_response :success
  end

  test "should get new" do
    get new_quimicos_producto_url
    assert_response :success
  end

  test "should create quimicos_producto" do
    assert_difference('QuimicosProducto.count') do
      post quimicos_productos_url, params: { quimicos_producto: { descripcion: @quimicos_producto.descripcion, especificaciones_tecnicas: @quimicos_producto.especificaciones_tecnicas, linea_producto: @quimicos_producto.linea_producto, marca: @quimicos_producto.marca, precio: @quimicos_producto.precio, presentacion: @quimicos_producto.presentacion, titulo: @quimicos_producto.titulo, video: @quimicos_producto.video } }
    end

    assert_redirected_to quimicos_producto_url(QuimicosProducto.last)
  end

  test "should show quimicos_producto" do
    get quimicos_producto_url(@quimicos_producto)
    assert_response :success
  end

  test "should get edit" do
    get edit_quimicos_producto_url(@quimicos_producto)
    assert_response :success
  end

  test "should update quimicos_producto" do
    patch quimicos_producto_url(@quimicos_producto), params: { quimicos_producto: { descripcion: @quimicos_producto.descripcion, especificaciones_tecnicas: @quimicos_producto.especificaciones_tecnicas, linea_producto: @quimicos_producto.linea_producto, marca: @quimicos_producto.marca, precio: @quimicos_producto.precio, presentacion: @quimicos_producto.presentacion, titulo: @quimicos_producto.titulo, video: @quimicos_producto.video } }
    assert_redirected_to quimicos_producto_url(@quimicos_producto)
  end

  test "should destroy quimicos_producto" do
    assert_difference('QuimicosProducto.count', -1) do
      delete quimicos_producto_url(@quimicos_producto)
    end

    assert_redirected_to quimicos_productos_url
  end
end
