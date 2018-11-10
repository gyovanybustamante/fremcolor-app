require "application_system_test_case"

class PlanchasSublimacionProductosTest < ApplicationSystemTestCase
  setup do
    @planchas_sublimacion_producto = planchas_sublimacion_productos(:one)
  end

  test "visiting the index" do
    visit planchas_sublimacion_productos_url
    assert_selector "h1", text: "Planchas Sublimacion Productos"
  end

  test "creating a Planchas sublimacion producto" do
    visit planchas_sublimacion_productos_url
    click_on "New Planchas Sublimacion Producto"

    fill_in "Descripcion", with: @planchas_sublimacion_producto.descripcion
    fill_in "Especificaciones Tecnicas", with: @planchas_sublimacion_producto.especificaciones_tecnicas
    fill_in "Linea Producto", with: @planchas_sublimacion_producto.linea_producto
    fill_in "Marca", with: @planchas_sublimacion_producto.marca
    fill_in "Precio", with: @planchas_sublimacion_producto.precio
    fill_in "Presentacion", with: @planchas_sublimacion_producto.presentacion
    fill_in "Titulo", with: @planchas_sublimacion_producto.titulo
    fill_in "Video", with: @planchas_sublimacion_producto.video
    click_on "Create Planchas sublimacion producto"

    assert_text "Planchas sublimacion producto was successfully created"
    click_on "Back"
  end

  test "updating a Planchas sublimacion producto" do
    visit planchas_sublimacion_productos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @planchas_sublimacion_producto.descripcion
    fill_in "Especificaciones Tecnicas", with: @planchas_sublimacion_producto.especificaciones_tecnicas
    fill_in "Linea Producto", with: @planchas_sublimacion_producto.linea_producto
    fill_in "Marca", with: @planchas_sublimacion_producto.marca
    fill_in "Precio", with: @planchas_sublimacion_producto.precio
    fill_in "Presentacion", with: @planchas_sublimacion_producto.presentacion
    fill_in "Titulo", with: @planchas_sublimacion_producto.titulo
    fill_in "Video", with: @planchas_sublimacion_producto.video
    click_on "Update Planchas sublimacion producto"

    assert_text "Planchas sublimacion producto was successfully updated"
    click_on "Back"
  end

  test "destroying a Planchas sublimacion producto" do
    visit planchas_sublimacion_productos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Planchas sublimacion producto was successfully destroyed"
  end
end
