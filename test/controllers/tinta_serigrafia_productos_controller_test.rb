require 'test_helper'

class TintaSerigrafiaProductosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tinta_serigrafia_producto = tinta_serigrafia_productos(:one)
  end

  test "should get index" do
    get tinta_serigrafia_productos_url
    assert_response :success
  end

  test "should get new" do
    get new_tinta_serigrafia_producto_url
    assert_response :success
  end

  test "should create tinta_serigrafia_producto" do
    assert_difference('TintaSerigrafiaProducto.count') do
      post tinta_serigrafia_productos_url, params: { tinta_serigrafia_producto: { descripcion: @tinta_serigrafia_producto.descripcion, especificaciones_tecnicas: @tinta_serigrafia_producto.especificaciones_tecnicas, linea_producto: @tinta_serigrafia_producto.linea_producto, marca: @tinta_serigrafia_producto.marca, precio: @tinta_serigrafia_producto.precio, presentacion: @tinta_serigrafia_producto.presentacion, titulo: @tinta_serigrafia_producto.titulo, titulo_grupo_color_cinco: @tinta_serigrafia_producto.titulo_grupo_color_cinco, titulo_grupo_color_cuatro: @tinta_serigrafia_producto.titulo_grupo_color_cuatro, titulo_grupo_color_diez: @tinta_serigrafia_producto.titulo_grupo_color_diez, titulo_grupo_color_doce: @tinta_serigrafia_producto.titulo_grupo_color_doce, titulo_grupo_color_dos: @tinta_serigrafia_producto.titulo_grupo_color_dos, titulo_grupo_color_nueve: @tinta_serigrafia_producto.titulo_grupo_color_nueve, titulo_grupo_color_ocho: @tinta_serigrafia_producto.titulo_grupo_color_ocho, titulo_grupo_color_once: @tinta_serigrafia_producto.titulo_grupo_color_once, titulo_grupo_color_seis: @tinta_serigrafia_producto.titulo_grupo_color_seis, titulo_grupo_color_siete: @tinta_serigrafia_producto.titulo_grupo_color_siete, titulo_grupo_color_tres: @tinta_serigrafia_producto.titulo_grupo_color_tres, titulo_grupo_color_uno: @tinta_serigrafia_producto.titulo_grupo_color_uno, video: @tinta_serigrafia_producto.video } }
    end

    assert_redirected_to tinta_serigrafia_producto_url(TintaSerigrafiaProducto.last)
  end

  test "should show tinta_serigrafia_producto" do
    get tinta_serigrafia_producto_url(@tinta_serigrafia_producto)
    assert_response :success
  end

  test "should get edit" do
    get edit_tinta_serigrafia_producto_url(@tinta_serigrafia_producto)
    assert_response :success
  end

  test "should update tinta_serigrafia_producto" do
    patch tinta_serigrafia_producto_url(@tinta_serigrafia_producto), params: { tinta_serigrafia_producto: { descripcion: @tinta_serigrafia_producto.descripcion, especificaciones_tecnicas: @tinta_serigrafia_producto.especificaciones_tecnicas, linea_producto: @tinta_serigrafia_producto.linea_producto, marca: @tinta_serigrafia_producto.marca, precio: @tinta_serigrafia_producto.precio, presentacion: @tinta_serigrafia_producto.presentacion, titulo: @tinta_serigrafia_producto.titulo, titulo_grupo_color_cinco: @tinta_serigrafia_producto.titulo_grupo_color_cinco, titulo_grupo_color_cuatro: @tinta_serigrafia_producto.titulo_grupo_color_cuatro, titulo_grupo_color_diez: @tinta_serigrafia_producto.titulo_grupo_color_diez, titulo_grupo_color_doce: @tinta_serigrafia_producto.titulo_grupo_color_doce, titulo_grupo_color_dos: @tinta_serigrafia_producto.titulo_grupo_color_dos, titulo_grupo_color_nueve: @tinta_serigrafia_producto.titulo_grupo_color_nueve, titulo_grupo_color_ocho: @tinta_serigrafia_producto.titulo_grupo_color_ocho, titulo_grupo_color_once: @tinta_serigrafia_producto.titulo_grupo_color_once, titulo_grupo_color_seis: @tinta_serigrafia_producto.titulo_grupo_color_seis, titulo_grupo_color_siete: @tinta_serigrafia_producto.titulo_grupo_color_siete, titulo_grupo_color_tres: @tinta_serigrafia_producto.titulo_grupo_color_tres, titulo_grupo_color_uno: @tinta_serigrafia_producto.titulo_grupo_color_uno, video: @tinta_serigrafia_producto.video } }
    assert_redirected_to tinta_serigrafia_producto_url(@tinta_serigrafia_producto)
  end

  test "should destroy tinta_serigrafia_producto" do
    assert_difference('TintaSerigrafiaProducto.count', -1) do
      delete tinta_serigrafia_producto_url(@tinta_serigrafia_producto)
    end

    assert_redirected_to tinta_serigrafia_productos_url
  end
end
