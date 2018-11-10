require "application_system_test_case"

class MensajesTest < ApplicationSystemTestCase
  setup do
    @mensaje = mensajes(:one)
  end

  test "visiting the index" do
    visit mensajes_url
    assert_selector "h1", text: "Mensajes"
  end

  test "creating a Mensaje" do
    visit mensajes_url
    click_on "New Mensaje"

    fill_in "Correo Electronico", with: @mensaje.correo_electronico
    fill_in "Mensaje", with: @mensaje.mensaje
    fill_in "Nombre Apellido", with: @mensaje.nombre_apellido
    fill_in "Telefono", with: @mensaje.telefono
    click_on "Create Mensaje"

    assert_text "Mensaje was successfully created"
    click_on "Back"
  end

  test "updating a Mensaje" do
    visit mensajes_url
    click_on "Edit", match: :first

    fill_in "Correo Electronico", with: @mensaje.correo_electronico
    fill_in "Mensaje", with: @mensaje.mensaje
    fill_in "Nombre Apellido", with: @mensaje.nombre_apellido
    fill_in "Telefono", with: @mensaje.telefono
    click_on "Update Mensaje"

    assert_text "Mensaje was successfully updated"
    click_on "Back"
  end

  test "destroying a Mensaje" do
    visit mensajes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mensaje was successfully destroyed"
  end
end
