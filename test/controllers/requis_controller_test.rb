require "test_helper"

class RequisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @requi = requis(:one)
  end

  test "should get index" do
    get requis_url
    assert_response :success
  end

  test "should get new" do
    get new_requi_url
    assert_response :success
  end

  test "should create requi" do
    assert_difference("Requi.count") do
      post requis_url, params: { requi: { titulo: @requi.titulo, user_id: @requi.user_id } }
    end

    assert_redirected_to requi_url(Requi.last)
  end

  test "should show requi" do
    get requi_url(@requi)
    assert_response :success
  end

  test "should get edit" do
    get edit_requi_url(@requi)
    assert_response :success
  end

  test "should update requi" do
    patch requi_url(@requi), params: { requi: { titulo: @requi.titulo, user_id: @requi.user_id } }
    assert_redirected_to requi_url(@requi)
  end

  test "should destroy requi" do
    assert_difference("Requi.count", -1) do
      delete requi_url(@requi)
    end

    assert_redirected_to requis_url
  end
end
