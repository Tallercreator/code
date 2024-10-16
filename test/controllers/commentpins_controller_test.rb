require "test_helper"

class CommentpinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commentpin = commentpins(:one)
  end

  test "should get index" do
    get commentpins_url
    assert_response :success
  end

  test "should get new" do
    get new_commentpin_url
    assert_response :success
  end

  test "should create commentpin" do
    assert_difference("Commentpin.count") do
      post commentpins_url, params: { commentpin: { description: @commentpin.description, title: @commentpin.title } }
    end

    assert_redirected_to commentpin_url(Commentpin.last)
  end

  test "should show commentpin" do
    get commentpin_url(@commentpin)
    assert_response :success
  end

  test "should get edit" do
    get edit_commentpin_url(@commentpin)
    assert_response :success
  end

  test "should update commentpin" do
    patch commentpin_url(@commentpin), params: { commentpin: { description: @commentpin.description, title: @commentpin.title } }
    assert_redirected_to commentpin_url(@commentpin)
  end

  test "should destroy commentpin" do
    assert_difference("Commentpin.count", -1) do
      delete commentpin_url(@commentpin)
    end

    assert_redirected_to commentpins_url
  end
end
