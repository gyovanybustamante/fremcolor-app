require "application_system_test_case"

class TintaSerigrafiaProductosTest < ApplicationSystemTestCase
  setup do
    @tinta_serigrafia_producto = tinta_serigrafia_productos(:one)
  end

  test "visiting the index" do
    visit tinta_serigrafia_productos_url
    assert_selector "h1", text: "Tinta Serigrafia Productos"
  end

  test "creating a Tinta serigrafia producto" do
    visit tinta_serigrafia_productos_url
    click_on "New Tinta Serigrafia Producto"

    fill_in "Descripcion", with: @tinta_serigrafia_producto.descripcion
    fill_in "Especificaciones Tecnicas", with: @tinta_serigrafia_producto.especificaciones_tecnicas
    fill_in "Linea Producto", with: @tinta_serigrafia_producto.linea_producto
    fill_in "Marca", with: @tinta_serigrafia_producto.marca
    fill_in "Precio", with: @tinta_serigrafia_producto.precio
    fill_in "Presentacion", with: @tinta_serigrafia_producto.presentacion
    fill_in "Titulo", with: @tinta_serigrafia_producto.titulo
    fill_in "Titulo Grupo Color Cinco", with: @tinta_serigrafia_producto.titulo_grupo_color_cinco
    fill_in "Titulo Grupo Color Cuatro", with: @tinta_serigrafia_producto.titulo_grupo_color_cuatro
    fill_in "Titulo Grupo Color Diez", with: @tinta_serigrafia_producto.titulo_grupo_color_diez
    fill_in "Titulo Grupo Color Doce", with: @tinta_serigrafia_producto.titulo_grupo_color_doce
    fill_in "Titulo Grupo Color Dos", with: @tinta_serigrafia_producto.titulo_grupo_color_dos
    fill_in "Titulo Grupo Color Nueve", with: @tinta_serigrafia_producto.titulo_grupo_color_nueve
    fill_in "Titulo Grupo Color Ocho", with: @tinta_serigrafia_producto.titulo_grupo_color_ocho
    fill_in "Titulo Grupo Color Once", with: @tinta_serigrafia_producto.titulo_grupo_color_once
    fill_in "Titulo Grupo Color Seis", with: @tinta_serigrafia_producto.titulo_grupo_color_seis
    fill_in "Titulo Grupo Color Siete", with: @tinta_serigrafia_producto.titulo_grupo_color_siete
    fill_in "Titulo Grupo Color Tres", with: @tinta_serigrafia_producto.titulo_grupo_color_tres
    fill_in "Titulo Grupo Color Uno", with: @tinta_serigrafia_producto.titulo_grupo_color_uno
    fill_in "Video", with: @tinta_serigrafia_producto.video
    click_on "Create Tinta serigrafia producto"

    assert_text "Tinta serigrafia producto was successfully created"
    click_on "Back"
  end

  test "updating a Tinta serigrafia producto" do
    visit tinta_serigrafia_productos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @tinta_serigrafia_producto.descripcion
    fill_in "Especificaciones Tecnicas", with: @tinta_serigrafia_producto.especificaciones_tecnicas
    fill_in "Linea Producto", with: @tinta_serigrafia_producto.linea_producto
    fill_in "Marca", with: @tinta_serigrafia_producto.marca
    fill_in "Precio", with: @tinta_serigrafia_producto.precio
    fill_in "Presentacion", with: @tinta_serigrafia_producto.presentacion
    fill_in "Titulo", with: @tinta_serigrafia_producto.titulo
    fill_in "Titulo Grupo Color Cinco", with: @tinta_serigrafia_producto.titulo_grupo_color_cinco
    fill_in "Titulo Grupo Color Cuatro", with: @tinta_serigrafia_producto.titulo_grupo_color_cuatro
    fill_in "Titulo Grupo Color Diez", with: @tinta_serigrafia_producto.titulo_grupo_color_diez
    fill_in "Titulo Grupo Color Doce", with: @tinta_serigrafia_producto.titulo_grupo_color_doce
    fill_in "Titulo Grupo Color Dos", with: @tinta_serigrafia_producto.titulo_grupo_color_dos
    fill_in "Titulo Grupo Color Nueve", with: @tinta_serigrafia_producto.titulo_grupo_color_nueve
    fill_in "Titulo Grupo Color Ocho", with: @tinta_serigrafia_producto.titulo_grupo_color_ocho
    fill_in "Titulo Grupo Color Once", with: @tinta_serigrafia_producto.titulo_grupo_color_once
    fill_in "Titulo Grupo Color Seis", with: @tinta_serigrafia_producto.titulo_grupo_color_seis
    fill_in "Titulo Grupo Color Siete", with: @tinta_serigrafia_producto.titulo_grupo_color_siete
    fill_in "Titulo Grupo Color Tres", with: @tinta_serigrafia_producto.titulo_grupo_color_tres
    fill_in "Titulo Grupo Color Uno", with: @tinta_serigrafia_producto.titulo_grupo_color_uno
    fill_in "Video", with: @tinta_serigrafia_producto.video
    click_on "Update Tinta serigrafia producto"

    assert_text "Tinta serigrafia producto was successfully updated"
    click_on "Back"
  end

  test "destroying a Tinta serigrafia producto" do
    visit tinta_serigrafia_productos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tinta serigrafia producto was successfully destroyed"
  end
end
