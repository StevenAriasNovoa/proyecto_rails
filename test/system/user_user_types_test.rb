require "application_system_test_case"

class UserUserTypesTest < ApplicationSystemTestCase
  setup do
    @user_user_type = user_user_types(:one)
  end

  test "visiting the index" do
    visit user_user_types_url
    assert_selector "h1", text: "User user types"
  end

  test "should create user user type" do
    visit user_user_types_url
    click_on "New user user type"

    click_on "Create User user type"

    assert_text "User user type was successfully created"
    click_on "Back"
  end

  test "should update User user type" do
    visit user_user_type_url(@user_user_type)
    click_on "Edit this user user type", match: :first

    click_on "Update User user type"

    assert_text "User user type was successfully updated"
    click_on "Back"
  end

  test "should destroy User user type" do
    visit user_user_type_url(@user_user_type)
    click_on "Destroy this user user type", match: :first

    assert_text "User user type was successfully destroyed"
  end
end
