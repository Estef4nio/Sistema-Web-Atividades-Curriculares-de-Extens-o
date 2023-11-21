require "application_system_test_case"

class RequisicaosTest < ApplicationSystemTestCase
  setup do
    @requisicao = requisicaos(:one)
  end

  test "visiting the index" do
    visit requisicaos_url
    assert_selector "h1", text: "Requisicaos"
  end

  test "should create requisicao" do
    visit requisicaos_url
    click_on "New requisicao"

    fill_in "Titulo", with: @requisicao.titulo
    click_on "Create Requisicao"

    assert_text "Requisicao was successfully created"
    click_on "Back"
  end

  test "should update Requisicao" do
    visit requisicao_url(@requisicao)
    click_on "Edit this requisicao", match: :first

    fill_in "Titulo", with: @requisicao.titulo
    click_on "Update Requisicao"

    assert_text "Requisicao was successfully updated"
    click_on "Back"
  end

  test "should destroy Requisicao" do
    visit requisicao_url(@requisicao)
    click_on "Destroy this requisicao", match: :first

    assert_text "Requisicao was successfully destroyed"
  end
end
