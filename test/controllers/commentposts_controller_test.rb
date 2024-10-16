require "test_helper"

class CommentpostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commentpost = commentposts(:one)
  end

  test "should get index" do
    get commentposts_url
    assert_response :success
  end

  test "should get new" do
    get new_commentpost_url
    assert_response :success
  end

  test "should create commentpost" do
    assert_difference("Commentpost.count") do
      post commentposts_url, params: { commentpost: { description: @commentpost.description, title: @commentpost.title } }
    end

    assert_redirected_to commentpost_url(Commentpost.last)
  end

  test "should show commentpost" do
    get commentpost_url(@commentpost)
    assert_response :success
  end

  test "should get edit" do
    get edit_commentpost_url(@commentpost)
    assert_response :success
  end

  test "should update commentpost" do
    patch commentpost_url(@commentpost), params: { commentpost: { description: @commentpost.description, title: @commentpost.title } }
    assert_redirected_to commentpost_url(@commentpost)
  end

  test "should destroy commentpost" do
    assert_difference("Commentpost.count", -1) do
      delete commentpost_url(@commentpost)
    end

    assert_redirected_to commentposts_url
  end
end
