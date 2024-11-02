require "application_system_test_case"

class AutorsTest < ApplicationSystemTestCase
  setup do
    @autor = autors(:one)
  end

  test "visiting the index" do
    visit autors_url
    assert_selector "h1", text: "Autors"
  end

  test "should create autor" do
    visit autors_url
    click_on "New autor"

    fill_in "Biografia", with: @autor.biografia
    fill_in "Fecha fallecimiento", with: @autor.fecha_fallecimiento
    fill_in "Fecha nacimiento", with: @autor.fecha_nacimiento
    fill_in "Nombre", with: @autor.nombre
    fill_in "Pais", with: @autor.pais
    click_on "Create Autor"

    assert_text "Autor was successfully created"
    click_on "Back"
  end

  test "should update Autor" do
    visit autor_url(@autor)
    click_on "Edit this autor", match: :first

    fill_in "Biografia", with: @autor.biografia
    fill_in "Fecha fallecimiento", with: @autor.fecha_fallecimiento
    fill_in "Fecha nacimiento", with: @autor.fecha_nacimiento
    fill_in "Nombre", with: @autor.nombre
    fill_in "Pais", with: @autor.pais
    click_on "Update Autor"

    assert_text "Autor was successfully updated"
    click_on "Back"
  end

  test "should destroy Autor" do
    visit autor_url(@autor)
    click_on "Destroy this autor", match: :first

    assert_text "Autor was successfully destroyed"
  end
end
