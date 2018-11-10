require "application_system_test_case"

class InsumosSerigrafiaProductosTest < ApplicationSystemTestCase
  setup do
    @insumos_serigrafia_producto = insumos_serigrafia_productos(:one)
  end

  test "visiting the index" do
    visit insumos_serigrafia_productos_url
    assert_selector "h1", text: "Insumos Serigrafia Productos"
  end

  test "creating a Insumos serigrafia producto" do
    visit insumos_serigrafia_productos_url
    click_on "New Insumos Serigrafia Producto"

    fill_in "Descripcion", with: @insumos_serigrafia_producto.descripcion
    fill_in "Especificaciones Tecnicas", with: @insumos_serigrafia_producto.especificaciones_tecnicas
    fill_in "Linea Producto", with: @insumos_serigrafia_producto.linea_producto
    fill_in "Marca", with: @insumos_serigrafia_producto.marca
    fill_in "Precio", with: @insumos_serigrafia_producto.precio
    fill_in "Presentacion", with: @insumos_serigrafia_producto.presentacion
    fill_in "Titulo", with: @insumos_serigrafia_producto.titulo
    fill_in "Video", with: @insumos_serigrafia_producto.video
    click_on "Create Insumos serigrafia producto"

    assert_text "Insumos serigrafia producto was successfully created"
    click_on "Back"
  end

  test "updating a Insumos serigrafia producto" do
    visit insumos_serigrafia_productos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @insumos_serigrafia_producto.descripcion
    fill_in "Especificaciones Tecnicas", with: @insumos_serigrafia_producto.especificaciones_tecnicas
    fill_in "Linea Producto", with: @insumos_serigrafia_producto.linea_producto
    fill_in "Marca", with: @insumos_serigrafia_producto.marca
    fill_in "Precio", with: @insumos_serigrafia_producto.precio
    fill_in "Presentacion", with: @insumos_serigrafia_producto.presentacion
    fill_in "Titulo", with: @insumos_serigrafia_producto.titulo
    fill_in "Video", with: @insumos_serigrafia_producto.video
    click_on "Update Insumos serigrafia producto"

    assert_text "Insumos serigrafia producto was successfully updated"
    click_on "Back"
  end

  test "destroying a Insumos serigrafia producto" do
    visit insumos_serigrafia_productos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Insumos serigrafia producto was successfully destroyed"
  end
end
