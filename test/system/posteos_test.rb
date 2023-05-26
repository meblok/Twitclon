require "application_system_test_case"

class PosteosTest < ApplicationSystemTestCase
  setup do
    @posteo = posteos(:one)
  end

  test "visiting the index" do
    visit posteos_url
    assert_selector "h1", text: "Posteos"
  end

  test "should create posteo" do
    visit posteos_url
    click_on "New posteo"

    fill_in "Description", with: @posteo.Description
    fill_in "Username", with: @posteo.UserName
    click_on "Create Posteo"

    assert_text "Posteo was successfully created"
    click_on "Back"
  end

  test "should update Posteo" do
    visit posteo_url(@posteo)
    click_on "Edit this posteo", match: :first

    fill_in "Description", with: @posteo.Description
    fill_in "Username", with: @posteo.UserName
    click_on "Update Posteo"

    assert_text "Posteo was successfully updated"
    click_on "Back"
  end

  test "should destroy Posteo" do
    visit posteo_url(@posteo)
    click_on "Destroy this posteo", match: :first

    assert_text "Posteo was successfully destroyed"
  end
end
