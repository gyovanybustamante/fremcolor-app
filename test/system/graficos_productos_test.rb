require "application_system_test_case"

class GraficosProductosTest < ApplicationSystemTestCase
  setup do
    @graficos_producto = graficos_productos(:one)
  end

  test "visiting the index" do
    visit graficos_productos_url
    assert_selector "h1", text: "Graficos Productos"
  end

  test "creating a Graficos producto" do
    visit graficos_productos_url
    click_on "New Graficos Producto"

    fill_in "Descripcion", with: @graficos_producto.descripcion
    fill_in "Especificaciones Tecnicas", with: @graficos_producto.especificaciones_tecnicas
    fill_in "Linea Producto", with: @graficos_producto.linea_producto
    fill_in "Marca", with: @graficos_producto.marca
    fill_in "Precio", with: @graficos_producto.precio
    fill_in "Presentacion", with: @graficos_producto.presentacion
    fill_in "Titulo", with: @graficos_producto.titulo
    fill_in "Video", with: @graficos_producto.video
    click_on "Create Graficos producto"

    assert_text "Graficos producto was successfully created"
    click_on "Back"
  end

  test "updating a Graficos producto" do
    visit graficos_productos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @graficos_producto.descripcion
    fill_in "Especificaciones Tecnicas", with: @graficos_producto.especificaciones_tecnicas
    fill_in "Linea Producto", with: @graficos_producto.linea_producto
    fill_in "Marca", with: @graficos_producto.marca
    fill_in "Precio", with: @graficos_producto.precio
    fill_in "Presentacion", with: @graficos_producto.presentacion
    fill_in "Titulo", with: @graficos_producto.titulo
    fill_in "Video", with: @graficos_producto.video
    click_on "Update Graficos producto"

    assert_text "Graficos producto was successfully updated"
    click_on "Back"
  end

  test "destroying a Graficos producto" do
    visit graficos_productos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Graficos producto was successfully destroyed"
  end
end
