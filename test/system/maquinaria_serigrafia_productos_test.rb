require "application_system_test_case"

class MaquinariaSerigrafiaProductosTest < ApplicationSystemTestCase
  setup do
    @maquinaria_serigrafia_producto = maquinaria_serigrafia_productos(:one)
  end

  test "visiting the index" do
    visit maquinaria_serigrafia_productos_url
    assert_selector "h1", text: "Maquinaria Serigrafia Productos"
  end

  test "creating a Maquinaria serigrafia producto" do
    visit maquinaria_serigrafia_productos_url
    click_on "New Maquinaria Serigrafia Producto"

    fill_in "Descripcion", with: @maquinaria_serigrafia_producto.descripcion
    fill_in "Especificaciones Tecnicas", with: @maquinaria_serigrafia_producto.especificaciones_tecnicas
    fill_in "Linea Producto", with: @maquinaria_serigrafia_producto.linea_producto
    fill_in "Marca", with: @maquinaria_serigrafia_producto.marca
    fill_in "Precio", with: @maquinaria_serigrafia_producto.precio
    fill_in "Presentacion", with: @maquinaria_serigrafia_producto.presentacion
    fill_in "Titulo", with: @maquinaria_serigrafia_producto.titulo
    fill_in "Video", with: @maquinaria_serigrafia_producto.video
    click_on "Create Maquinaria serigrafia producto"

    assert_text "Maquinaria serigrafia producto was successfully created"
    click_on "Back"
  end

  test "updating a Maquinaria serigrafia producto" do
    visit maquinaria_serigrafia_productos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @maquinaria_serigrafia_producto.descripcion
    fill_in "Especificaciones Tecnicas", with: @maquinaria_serigrafia_producto.especificaciones_tecnicas
    fill_in "Linea Producto", with: @maquinaria_serigrafia_producto.linea_producto
    fill_in "Marca", with: @maquinaria_serigrafia_producto.marca
    fill_in "Precio", with: @maquinaria_serigrafia_producto.precio
    fill_in "Presentacion", with: @maquinaria_serigrafia_producto.presentacion
    fill_in "Titulo", with: @maquinaria_serigrafia_producto.titulo
    fill_in "Video", with: @maquinaria_serigrafia_producto.video
    click_on "Update Maquinaria serigrafia producto"

    assert_text "Maquinaria serigrafia producto was successfully updated"
    click_on "Back"
  end

  test "destroying a Maquinaria serigrafia producto" do
    visit maquinaria_serigrafia_productos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Maquinaria serigrafia producto was successfully destroyed"
  end
end
