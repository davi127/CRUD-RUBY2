require "application_system_test_case"

class ResenasTest < ApplicationSystemTestCase
  setup do
    @resena = resenas(:one)
  end

  test "visiting the index" do
    visit resenas_url
    assert_selector "h1", text: "Resenas"
  end

  test "should create resena" do
    visit resenas_url
    click_on "New resena"

    fill_in "Calificacion", with: @resena.calificacion
    fill_in "Comentario", with: @resena.comentario
    fill_in "Fecha", with: @resena.fecha
    fill_in "Libro", with: @resena.libro_id
    fill_in "Usuario", with: @resena.usuario_id
    click_on "Create Resena"

    assert_text "Resena was successfully created"
    click_on "Back"
  end

  test "should update Resena" do
    visit resena_url(@resena)
    click_on "Edit this resena", match: :first

    fill_in "Calificacion", with: @resena.calificacion
    fill_in "Comentario", with: @resena.comentario
    fill_in "Fecha", with: @resena.fecha
    fill_in "Libro", with: @resena.libro_id
    fill_in "Usuario", with: @resena.usuario_id
    click_on "Update Resena"

    assert_text "Resena was successfully updated"
    click_on "Back"
  end

  test "should destroy Resena" do
    visit resena_url(@resena)
    click_on "Destroy this resena", match: :first

    assert_text "Resena was successfully destroyed"
  end
end
