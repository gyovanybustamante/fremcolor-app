require "application_system_test_case"

class InsumosSublimacionProductosTest < ApplicationSystemTestCase
  setup do
    @insumos_sublimacion_producto = insumos_sublimacion_productos(:one)
  end

  test "visiting the index" do
    visit insumos_sublimacion_productos_url
    assert_selector "h1", text: "Insumos Sublimacion Productos"
  end

  test "creating a Insumos sublimacion producto" do
    visit insumos_sublimacion_productos_url
    click_on "New Insumos Sublimacion Producto"

    fill_in "Descripcion", with: @insumos_sublimacion_producto.descripcion
    fill_in "Especificaciones Tecnicas", with: @insumos_sublimacion_producto.especificaciones_tecnicas
    fill_in "Linea Producto", with: @insumos_sublimacion_producto.linea_producto
    fill_in "Marca", with: @insumos_sublimacion_producto.marca
    fill_in "Precio", with: @insumos_sublimacion_producto.precio
    fill_in "Presentacion", with: @insumos_sublimacion_producto.presentacion
    fill_in "Titulo", with: @insumos_sublimacion_producto.titulo
    fill_in "Video", with: @insumos_sublimacion_producto.video
    click_on "Create Insumos sublimacion producto"

    assert_text "Insumos sublimacion producto was successfully created"
    click_on "Back"
  end

  test "updating a Insumos sublimacion producto" do
    visit insumos_sublimacion_productos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @insumos_sublimacion_producto.descripcion
    fill_in "Especificaciones Tecnicas", with: @insumos_sublimacion_producto.especificaciones_tecnicas
    fill_in "Linea Producto", with: @insumos_sublimacion_producto.linea_producto
    fill_in "Marca", with: @insumos_sublimacion_producto.marca
    fill_in "Precio", with: @insumos_sublimacion_producto.precio
    fill_in "Presentacion", with: @insumos_sublimacion_producto.presentacion
    fill_in "Titulo", with: @insumos_sublimacion_producto.titulo
    fill_in "Video", with: @insumos_sublimacion_producto.video
    click_on "Update Insumos sublimacion producto"

    assert_text "Insumos sublimacion producto was successfully updated"
    click_on "Back"
  end

  test "destroying a Insumos sublimacion producto" do
    visit insumos_sublimacion_productos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Insumos sublimacion producto was successfully destroyed"
  end
end
