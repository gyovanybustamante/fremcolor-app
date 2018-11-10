require "application_system_test_case"

class SeguridadProductosTest < ApplicationSystemTestCase
  setup do
    @seguridad_producto = seguridad_productos(:one)
  end

  test "visiting the index" do
    visit seguridad_productos_url
    assert_selector "h1", text: "Seguridad Productos"
  end

  test "creating a Seguridad producto" do
    visit seguridad_productos_url
    click_on "New Seguridad Producto"

    fill_in "Descripcion", with: @seguridad_producto.descripcion
    fill_in "Especificaciones Tecnicas", with: @seguridad_producto.especificaciones_tecnicas
    fill_in "Linea Producto", with: @seguridad_producto.linea_producto
    fill_in "Marca", with: @seguridad_producto.marca
    fill_in "Precio", with: @seguridad_producto.precio
    fill_in "Presentacion", with: @seguridad_producto.presentacion
    fill_in "Titulo", with: @seguridad_producto.titulo
    fill_in "Video", with: @seguridad_producto.video
    click_on "Create Seguridad producto"

    assert_text "Seguridad producto was successfully created"
    click_on "Back"
  end

  test "updating a Seguridad producto" do
    visit seguridad_productos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @seguridad_producto.descripcion
    fill_in "Especificaciones Tecnicas", with: @seguridad_producto.especificaciones_tecnicas
    fill_in "Linea Producto", with: @seguridad_producto.linea_producto
    fill_in "Marca", with: @seguridad_producto.marca
    fill_in "Precio", with: @seguridad_producto.precio
    fill_in "Presentacion", with: @seguridad_producto.presentacion
    fill_in "Titulo", with: @seguridad_producto.titulo
    fill_in "Video", with: @seguridad_producto.video
    click_on "Update Seguridad producto"

    assert_text "Seguridad producto was successfully updated"
    click_on "Back"
  end

  test "destroying a Seguridad producto" do
    visit seguridad_productos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Seguridad producto was successfully destroyed"
  end
end
