require "test_helper"

class LibrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @libro = libros(:one)
  end

  test "should get index" do
    get libros_url
    assert_response :success
  end

  test "should get new" do
    get new_libro_url
    assert_response :success
  end

  test "should create libro" do
    assert_difference("Libro.count") do
      post libros_url, params: { libro: { anio_publicacion: @libro.anio_publicacion, autor_id: @libro.autor_id, categoria_id: @libro.categoria_id, isbn: @libro.isbn, titulo: @libro.titulo } }
    end

    assert_redirected_to libro_url(Libro.last)
  end

  test "should show libro" do
    get libro_url(@libro)
    assert_response :success
  end

  test "should get edit" do
    get edit_libro_url(@libro)
    assert_response :success
  end

  test "should update libro" do
    patch libro_url(@libro), params: { libro: { anio_publicacion: @libro.anio_publicacion, autor_id: @libro.autor_id, categoria_id: @libro.categoria_id, isbn: @libro.isbn, titulo: @libro.titulo } }
    assert_redirected_to libro_url(@libro)
  end

  test "should destroy libro" do
    assert_difference("Libro.count", -1) do
      delete libro_url(@libro)
    end

    assert_redirected_to libros_url
  end
end
