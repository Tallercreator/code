require "application_system_test_case"

class CommentpostsTest < ApplicationSystemTestCase
  setup do
    @commentpost = commentposts(:one)
  end

  test "visiting the index" do
    visit commentposts_url
    assert_selector "h1", text: "Commentposts"
  end

  test "should create commentpost" do
    visit commentposts_url
    click_on "New commentpost"

    fill_in "Description", with: @commentpost.description
    fill_in "Title", with: @commentpost.title
    click_on "Create Commentpost"

    assert_text "Commentpost was successfully created"
    click_on "Back"
  end

  test "should update Commentpost" do
    visit commentpost_url(@commentpost)
    click_on "Edit this commentpost", match: :first

    fill_in "Description", with: @commentpost.description
    fill_in "Title", with: @commentpost.title
    click_on "Update Commentpost"

    assert_text "Commentpost was successfully updated"
    click_on "Back"
  end

  test "should destroy Commentpost" do
    visit commentpost_url(@commentpost)
    click_on "Destroy this commentpost", match: :first

    assert_text "Commentpost was successfully destroyed"
  end
end
