require "application_system_test_case"

class RequisTest < ApplicationSystemTestCase
  setup do
    @requi = requis(:one)
  end

  test "visiting the index" do
    visit requis_url
    assert_selector "h1", text: "Requis"
  end

  test "should create requi" do
    visit requis_url
    click_on "New requi"

    fill_in "Titulo", with: @requi.titulo
    fill_in "User", with: @requi.user_id
    click_on "Create Requi"

    assert_text "Requi was successfully created"
    click_on "Back"
  end

  test "should update Requi" do
    visit requi_url(@requi)
    click_on "Edit this requi", match: :first

    fill_in "Titulo", with: @requi.titulo
    fill_in "User", with: @requi.user_id
    click_on "Update Requi"

    assert_text "Requi was successfully updated"
    click_on "Back"
  end

  test "should destroy Requi" do
    visit requi_url(@requi)
    click_on "Destroy this requi", match: :first

    assert_text "Requi was successfully destroyed"
  end
end
