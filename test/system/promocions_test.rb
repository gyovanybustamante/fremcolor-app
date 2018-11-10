require "application_system_test_case"

class PromocionsTest < ApplicationSystemTestCase
  setup do
    @promocion = promocions(:one)
  end

  test "visiting the index" do
    visit promocions_url
    assert_selector "h1", text: "Promocions"
  end

  test "creating a Promocion" do
    visit promocions_url
    click_on "New Promocion"

    fill_in "Cideo Promocion", with: @promocion.cideo_promocion
    fill_in "Descripcion Promocion", with: @promocion.descripcion_promocion
    fill_in "Especificaciones Tecnicas", with: @promocion.especificaciones_tecnicas
    fill_in "Precio", with: @promocion.precio
    fill_in "Titulo Promocion", with: @promocion.titulo_promocion
    click_on "Create Promocion"

    assert_text "Promocion was successfully created"
    click_on "Back"
  end

  test "updating a Promocion" do
    visit promocions_url
    click_on "Edit", match: :first

    fill_in "Cideo Promocion", with: @promocion.cideo_promocion
    fill_in "Descripcion Promocion", with: @promocion.descripcion_promocion
    fill_in "Especificaciones Tecnicas", with: @promocion.especificaciones_tecnicas
    fill_in "Precio", with: @promocion.precio
    fill_in "Titulo Promocion", with: @promocion.titulo_promocion
    click_on "Update Promocion"

    assert_text "Promocion was successfully updated"
    click_on "Back"
  end

  test "destroying a Promocion" do
    visit promocions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Promocion was successfully destroyed"
  end
end
