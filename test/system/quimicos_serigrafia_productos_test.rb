require "application_system_test_case"

class QuimicosSerigrafiaProductosTest < ApplicationSystemTestCase
  setup do
    @quimicos_serigrafia_producto = quimicos_serigrafia_productos(:one)
  end

  test "visiting the index" do
    visit quimicos_serigrafia_productos_url
    assert_selector "h1", text: "Quimicos Serigrafia Productos"
  end

  test "creating a Quimicos serigrafia producto" do
    visit quimicos_serigrafia_productos_url
    click_on "New Quimicos Serigrafia Producto"

    fill_in "Descripcion", with: @quimicos_serigrafia_producto.descripcion
    fill_in "Especificaciones Tecnicas", with: @quimicos_serigrafia_producto.especificaciones_tecnicas
    fill_in "Linea Producto", with: @quimicos_serigrafia_producto.linea_producto
    fill_in "Marca", with: @quimicos_serigrafia_producto.marca
    fill_in "Precio", with: @quimicos_serigrafia_producto.precio
    fill_in "Presentacion", with: @quimicos_serigrafia_producto.presentacion
    fill_in "Titulo", with: @quimicos_serigrafia_producto.titulo
    fill_in "Video", with: @quimicos_serigrafia_producto.video
    click_on "Create Quimicos serigrafia producto"

    assert_text "Quimicos serigrafia producto was successfully created"
    click_on "Back"
  end

  test "updating a Quimicos serigrafia producto" do
    visit quimicos_serigrafia_productos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @quimicos_serigrafia_producto.descripcion
    fill_in "Especificaciones Tecnicas", with: @quimicos_serigrafia_producto.especificaciones_tecnicas
    fill_in "Linea Producto", with: @quimicos_serigrafia_producto.linea_producto
    fill_in "Marca", with: @quimicos_serigrafia_producto.marca
    fill_in "Precio", with: @quimicos_serigrafia_producto.precio
    fill_in "Presentacion", with: @quimicos_serigrafia_producto.presentacion
    fill_in "Titulo", with: @quimicos_serigrafia_producto.titulo
    fill_in "Video", with: @quimicos_serigrafia_producto.video
    click_on "Update Quimicos serigrafia producto"

    assert_text "Quimicos serigrafia producto was successfully updated"
    click_on "Back"
  end

  test "destroying a Quimicos serigrafia producto" do
    visit quimicos_serigrafia_productos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quimicos serigrafia producto was successfully destroyed"
  end
end
