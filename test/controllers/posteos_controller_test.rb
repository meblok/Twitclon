require "test_helper"

class PosteosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @posteo = posteos(:one)
  end

  test "should get index" do
    get posteos_url
    assert_response :success
  end

  test "should get new" do
    get new_posteo_url
    assert_response :success
  end

  test "should create posteo" do
    assert_difference("Posteo.count") do
      post posteos_url, params: { posteo: { Description: @posteo.Description, UserName: @posteo.UserName } }
    end

    assert_redirected_to posteo_url(Posteo.last)
  end

  test "should show posteo" do
    get posteo_url(@posteo)
    assert_response :success
  end

  test "should get edit" do
    get edit_posteo_url(@posteo)
    assert_response :success
  end

  test "should update posteo" do
    patch posteo_url(@posteo), params: { posteo: { Description: @posteo.Description, UserName: @posteo.UserName } }
    assert_redirected_to posteo_url(@posteo)
  end

  test "should destroy posteo" do
    assert_difference("Posteo.count", -1) do
      delete posteo_url(@posteo)
    end

    assert_redirected_to posteos_url
  end
end
