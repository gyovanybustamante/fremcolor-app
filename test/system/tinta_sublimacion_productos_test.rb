require "application_system_test_case"

class TintaSublimacionProductosTest < ApplicationSystemTestCase
  setup do
    @tinta_sublimacion_producto = tinta_sublimacion_productos(:one)
  end

  test "visiting the index" do
    visit tinta_sublimacion_productos_url
    assert_selector "h1", text: "Tinta Sublimacion Productos"
  end

  test "creating a Tinta sublimacion producto" do
    visit tinta_sublimacion_productos_url
    click_on "New Tinta Sublimacion Producto"

    fill_in "Descripcion", with: @tinta_sublimacion_producto.descripcion
    fill_in "Especificaciones Tecnicas", with: @tinta_sublimacion_producto.especificaciones_tecnicas
    fill_in "Linea Producto", with: @tinta_sublimacion_producto.linea_producto
    fill_in "Marca", with: @tinta_sublimacion_producto.marca
    fill_in "Precio", with: @tinta_sublimacion_producto.precio
    fill_in "Presentacion", with: @tinta_sublimacion_producto.presentacion
    fill_in "Titulo", with: @tinta_sublimacion_producto.titulo
    fill_in "Video", with: @tinta_sublimacion_producto.video
    click_on "Create Tinta sublimacion producto"

    assert_text "Tinta sublimacion producto was successfully created"
    click_on "Back"
  end

  test "updating a Tinta sublimacion producto" do
    visit tinta_sublimacion_productos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @tinta_sublimacion_producto.descripcion
    fill_in "Especificaciones Tecnicas", with: @tinta_sublimacion_producto.especificaciones_tecnicas
    fill_in "Linea Producto", with: @tinta_sublimacion_producto.linea_producto
    fill_in "Marca", with: @tinta_sublimacion_producto.marca
    fill_in "Precio", with: @tinta_sublimacion_producto.precio
    fill_in "Presentacion", with: @tinta_sublimacion_producto.presentacion
    fill_in "Titulo", with: @tinta_sublimacion_producto.titulo
    fill_in "Video", with: @tinta_sublimacion_producto.video
    click_on "Update Tinta sublimacion producto"

    assert_text "Tinta sublimacion producto was successfully updated"
    click_on "Back"
  end

  test "destroying a Tinta sublimacion producto" do
    visit tinta_sublimacion_productos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tinta sublimacion producto was successfully destroyed"
  end
end
