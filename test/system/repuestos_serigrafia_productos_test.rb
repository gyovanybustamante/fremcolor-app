require "application_system_test_case"

class RepuestosSerigrafiaProductosTest < ApplicationSystemTestCase
  setup do
    @repuestos_serigrafia_producto = repuestos_serigrafia_productos(:one)
  end

  test "visiting the index" do
    visit repuestos_serigrafia_productos_url
    assert_selector "h1", text: "Repuestos Serigrafia Productos"
  end

  test "creating a Repuestos serigrafia producto" do
    visit repuestos_serigrafia_productos_url
    click_on "New Repuestos Serigrafia Producto"

    fill_in "Descripcion", with: @repuestos_serigrafia_producto.descripcion
    fill_in "Especificaciones Tecnicas", with: @repuestos_serigrafia_producto.especificaciones_tecnicas
    fill_in "Linea Producto", with: @repuestos_serigrafia_producto.linea_producto
    fill_in "Marca", with: @repuestos_serigrafia_producto.marca
    fill_in "Precio", with: @repuestos_serigrafia_producto.precio
    fill_in "Presentacion", with: @repuestos_serigrafia_producto.presentacion
    fill_in "Titulo", with: @repuestos_serigrafia_producto.titulo
    fill_in "Video", with: @repuestos_serigrafia_producto.video
    click_on "Create Repuestos serigrafia producto"

    assert_text "Repuestos serigrafia producto was successfully created"
    click_on "Back"
  end

  test "updating a Repuestos serigrafia producto" do
    visit repuestos_serigrafia_productos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @repuestos_serigrafia_producto.descripcion
    fill_in "Especificaciones Tecnicas", with: @repuestos_serigrafia_producto.especificaciones_tecnicas
    fill_in "Linea Producto", with: @repuestos_serigrafia_producto.linea_producto
    fill_in "Marca", with: @repuestos_serigrafia_producto.marca
    fill_in "Precio", with: @repuestos_serigrafia_producto.precio
    fill_in "Presentacion", with: @repuestos_serigrafia_producto.presentacion
    fill_in "Titulo", with: @repuestos_serigrafia_producto.titulo
    fill_in "Video", with: @repuestos_serigrafia_producto.video
    click_on "Update Repuestos serigrafia producto"

    assert_text "Repuestos serigrafia producto was successfully updated"
    click_on "Back"
  end

  test "destroying a Repuestos serigrafia producto" do
    visit repuestos_serigrafia_productos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Repuestos serigrafia producto was successfully destroyed"
  end
end
