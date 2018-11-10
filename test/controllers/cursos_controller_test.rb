require 'test_helper'

class CursosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @curso = cursos(:one)
  end

  test "should get index" do
    get cursos_url
    assert_response :success
  end

  test "should get new" do
    get new_curso_url
    assert_response :success
  end

  test "should create curso" do
    assert_difference('Curso.count') do
      post cursos_url, params: { curso: { contenido_curso_text: @curso.contenido_curso_text, duracion: @curso.duracion, fecha_fin: @curso.fecha_fin, fecha_inicio: @curso.fecha_inicio, hora: @curso.hora, objetivo_curso: @curso.objetivo_curso, precio: @curso.precio, requisitos: @curso.requisitos, titulo_curso: @curso.titulo_curso } }
    end

    assert_redirected_to curso_url(Curso.last)
  end

  test "should show curso" do
    get curso_url(@curso)
    assert_response :success
  end

  test "should get edit" do
    get edit_curso_url(@curso)
    assert_response :success
  end

  test "should update curso" do
    patch curso_url(@curso), params: { curso: { contenido_curso_text: @curso.contenido_curso_text, duracion: @curso.duracion, fecha_fin: @curso.fecha_fin, fecha_inicio: @curso.fecha_inicio, hora: @curso.hora, objetivo_curso: @curso.objetivo_curso, precio: @curso.precio, requisitos: @curso.requisitos, titulo_curso: @curso.titulo_curso } }
    assert_redirected_to curso_url(@curso)
  end

  test "should destroy curso" do
    assert_difference('Curso.count', -1) do
      delete curso_url(@curso)
    end

    assert_redirected_to cursos_url
  end
end
