require "application_system_test_case"

class ImpresorasSublimacionProductosTest < ApplicationSystemTestCase
  setup do
    @impresoras_sublimacion_producto = impresoras_sublimacion_productos(:one)
  end

  test "visiting the index" do
    visit impresoras_sublimacion_productos_url
    assert_selector "h1", text: "Impresoras Sublimacion Productos"
  end

  test "creating a Impresoras sublimacion producto" do
    visit impresoras_sublimacion_productos_url
    click_on "New Impresoras Sublimacion Producto"

    fill_in "Descripcion", with: @impresoras_sublimacion_producto.descripcion
    fill_in "Especificaciones Tecnicas", with: @impresoras_sublimacion_producto.especificaciones_tecnicas
    fill_in "Linea Producto", with: @impresoras_sublimacion_producto.linea_producto
    fill_in "Marca", with: @impresoras_sublimacion_producto.marca
    fill_in "Precio", with: @impresoras_sublimacion_producto.precio
    fill_in "Presentacion", with: @impresoras_sublimacion_producto.presentacion
    fill_in "Titulo", with: @impresoras_sublimacion_producto.titulo
    fill_in "Video", with: @impresoras_sublimacion_producto.video
    click_on "Create Impresoras sublimacion producto"

    assert_text "Impresoras sublimacion producto was successfully created"
    click_on "Back"
  end

  test "updating a Impresoras sublimacion producto" do
    visit impresoras_sublimacion_productos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @impresoras_sublimacion_producto.descripcion
    fill_in "Especificaciones Tecnicas", with: @impresoras_sublimacion_producto.especificaciones_tecnicas
    fill_in "Linea Producto", with: @impresoras_sublimacion_producto.linea_producto
    fill_in "Marca", with: @impresoras_sublimacion_producto.marca
    fill_in "Precio", with: @impresoras_sublimacion_producto.precio
    fill_in "Presentacion", with: @impresoras_sublimacion_producto.presentacion
    fill_in "Titulo", with: @impresoras_sublimacion_producto.titulo
    fill_in "Video", with: @impresoras_sublimacion_producto.video
    click_on "Update Impresoras sublimacion producto"

    assert_text "Impresoras sublimacion producto was successfully updated"
    click_on "Back"
  end

  test "destroying a Impresoras sublimacion producto" do
    visit impresoras_sublimacion_productos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Impresoras sublimacion producto was successfully destroyed"
  end
end
