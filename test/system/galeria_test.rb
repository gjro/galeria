require "application_system_test_case"

class GaleriaTest < ApplicationSystemTestCase
  setup do
    @galerium = galeria(:one)
  end

  test "visiting the index" do
    visit galeria_url
    assert_selector "h1", text: "Galeria"
  end

  test "should create galerium" do
    visit galeria_url
    click_on "New galerium"

    fill_in "Data comemorativa", with: @galerium.data_comemorativa
    fill_in "Description", with: @galerium.description
    fill_in "Title", with: @galerium.title
    click_on "Create Galerium"

    assert_text "Galerium was successfully created"
    click_on "Back"
  end

  test "should update Galerium" do
    visit galerium_url(@galerium)
    click_on "Edit this galerium", match: :first

    fill_in "Data comemorativa", with: @galerium.data_comemorativa
    fill_in "Description", with: @galerium.description
    fill_in "Title", with: @galerium.title
    click_on "Update Galerium"

    assert_text "Galerium was successfully updated"
    click_on "Back"
  end

  test "should destroy Galerium" do
    visit galerium_url(@galerium)
    click_on "Destroy this galerium", match: :first

    assert_text "Galerium was successfully destroyed"
  end
end
