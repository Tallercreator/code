require "application_system_test_case"

class CommentpinsTest < ApplicationSystemTestCase
  setup do
    @commentpin = commentpins(:one)
  end

  test "visiting the index" do
    visit commentpins_url
    assert_selector "h1", text: "Commentpins"
  end

  test "should create commentpin" do
    visit commentpins_url
    click_on "New commentpin"

    fill_in "Description", with: @commentpin.description
    fill_in "Title", with: @commentpin.title
    click_on "Create Commentpin"

    assert_text "Commentpin was successfully created"
    click_on "Back"
  end

  test "should update Commentpin" do
    visit commentpin_url(@commentpin)
    click_on "Edit this commentpin", match: :first

    fill_in "Description", with: @commentpin.description
    fill_in "Title", with: @commentpin.title
    click_on "Update Commentpin"

    assert_text "Commentpin was successfully updated"
    click_on "Back"
  end

  test "should destroy Commentpin" do
    visit commentpin_url(@commentpin)
    click_on "Destroy this commentpin", match: :first

    assert_text "Commentpin was successfully destroyed"
  end
end
