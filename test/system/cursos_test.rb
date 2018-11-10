require "application_system_test_case"

class CursosTest < ApplicationSystemTestCase
  setup do
    @curso = cursos(:one)
  end

  test "visiting the index" do
    visit cursos_url
    assert_selector "h1", text: "Cursos"
  end

  test "creating a Curso" do
    visit cursos_url
    click_on "New Curso"

    fill_in "Contenido Curso Text", with: @curso.contenido_curso_text
    fill_in "Duracion", with: @curso.duracion
    fill_in "Fecha Fin", with: @curso.fecha_fin
    fill_in "Fecha Inicio", with: @curso.fecha_inicio
    fill_in "Hora", with: @curso.hora
    fill_in "Objetivo Curso", with: @curso.objetivo_curso
    fill_in "Precio", with: @curso.precio
    fill_in "Requisitos", with: @curso.requisitos
    fill_in "Titulo Curso", with: @curso.titulo_curso
    click_on "Create Curso"

    assert_text "Curso was successfully created"
    click_on "Back"
  end

  test "updating a Curso" do
    visit cursos_url
    click_on "Edit", match: :first

    fill_in "Contenido Curso Text", with: @curso.contenido_curso_text
    fill_in "Duracion", with: @curso.duracion
    fill_in "Fecha Fin", with: @curso.fecha_fin
    fill_in "Fecha Inicio", with: @curso.fecha_inicio
    fill_in "Hora", with: @curso.hora
    fill_in "Objetivo Curso", with: @curso.objetivo_curso
    fill_in "Precio", with: @curso.precio
    fill_in "Requisitos", with: @curso.requisitos
    fill_in "Titulo Curso", with: @curso.titulo_curso
    click_on "Update Curso"

    assert_text "Curso was successfully updated"
    click_on "Back"
  end

  test "destroying a Curso" do
    visit cursos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Curso was successfully destroyed"
  end
end
