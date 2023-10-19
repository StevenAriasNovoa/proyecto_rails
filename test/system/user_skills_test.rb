require "application_system_test_case"

class UserSkillsTest < ApplicationSystemTestCase
  setup do
    @user_skill = user_skills(:one)
  end

  test "visiting the index" do
    visit user_skills_url
    assert_selector "h1", text: "User skills"
  end

  test "should create user skill" do
    visit user_skills_url
    click_on "New user skill"

    click_on "Create User skill"

    assert_text "User skill was successfully created"
    click_on "Back"
  end

  test "should update User skill" do
    visit user_skill_url(@user_skill)
    click_on "Edit this user skill", match: :first

    click_on "Update User skill"

    assert_text "User skill was successfully updated"
    click_on "Back"
  end

  test "should destroy User skill" do
    visit user_skill_url(@user_skill)
    click_on "Destroy this user skill", match: :first

    assert_text "User skill was successfully destroyed"
  end
end
