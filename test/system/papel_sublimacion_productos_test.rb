require "application_system_test_case"

class PapelSublimacionProductosTest < ApplicationSystemTestCase
  setup do
    @papel_sublimacion_producto = papel_sublimacion_productos(:one)
  end

  test "visiting the index" do
    visit papel_sublimacion_productos_url
    assert_selector "h1", text: "Papel Sublimacion Productos"
  end

  test "creating a Papel sublimacion producto" do
    visit papel_sublimacion_productos_url
    click_on "New Papel Sublimacion Producto"

    fill_in "Descripcion", with: @papel_sublimacion_producto.descripcion
    fill_in "Especificaciones Tecnicas", with: @papel_sublimacion_producto.especificaciones_tecnicas
    fill_in "Linea Producto", with: @papel_sublimacion_producto.linea_producto
    fill_in "Marca", with: @papel_sublimacion_producto.marca
    fill_in "Precio", with: @papel_sublimacion_producto.precio
    fill_in "Presentacion", with: @papel_sublimacion_producto.presentacion
    fill_in "Titulo", with: @papel_sublimacion_producto.titulo
    fill_in "Video", with: @papel_sublimacion_producto.video
    click_on "Create Papel sublimacion producto"

    assert_text "Papel sublimacion producto was successfully created"
    click_on "Back"
  end

  test "updating a Papel sublimacion producto" do
    visit papel_sublimacion_productos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @papel_sublimacion_producto.descripcion
    fill_in "Especificaciones Tecnicas", with: @papel_sublimacion_producto.especificaciones_tecnicas
    fill_in "Linea Producto", with: @papel_sublimacion_producto.linea_producto
    fill_in "Marca", with: @papel_sublimacion_producto.marca
    fill_in "Precio", with: @papel_sublimacion_producto.precio
    fill_in "Presentacion", with: @papel_sublimacion_producto.presentacion
    fill_in "Titulo", with: @papel_sublimacion_producto.titulo
    fill_in "Video", with: @papel_sublimacion_producto.video
    click_on "Update Papel sublimacion producto"

    assert_text "Papel sublimacion producto was successfully updated"
    click_on "Back"
  end

  test "destroying a Papel sublimacion producto" do
    visit papel_sublimacion_productos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Papel sublimacion producto was successfully destroyed"
  end
end
