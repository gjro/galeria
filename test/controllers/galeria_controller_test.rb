require "test_helper"

class GaleriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @galerium = galeria(:one)
  end

  test "should get index" do
    get galeria_url
    assert_response :success
  end

  test "should get new" do
    get new_galerium_url
    assert_response :success
  end

  test "should create galerium" do
    assert_difference("Galerium.count") do
      post galeria_url, params: { galerium: { description: @galerium.description, name: @galerium.name } }
    end

    assert_redirected_to galerium_url(Galerium.last)
  end

  test "should show galerium" do
    get galerium_url(@galerium)
    assert_response :success
  end

  test "should get edit" do
    get edit_galerium_url(@galerium)
    assert_response :success
  end

  test "should update galerium" do
    patch galerium_url(@galerium), params: { galerium: { description: @galerium.description, name: @galerium.name } }
    assert_redirected_to galerium_url(@galerium)
  end

  test "should destroy galerium" do
    assert_difference("Galerium.count", -1) do
      delete galerium_url(@galerium)
    end

    assert_redirected_to galeria_url
  end
end
