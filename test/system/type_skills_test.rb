require "application_system_test_case"

class TypeSkillsTest < ApplicationSystemTestCase
  setup do
    @type_skill = type_skills(:one)
  end

  test "visiting the index" do
    visit type_skills_url
    assert_selector "h1", text: "Type skills"
  end

  test "should create type skill" do
    visit type_skills_url
    click_on "New type skill"

    fill_in "Name", with: @type_skill.name
    click_on "Create Type skill"

    assert_text "Type skill was successfully created"
    click_on "Back"
  end

  test "should update Type skill" do
    visit type_skill_url(@type_skill)
    click_on "Edit this type skill", match: :first

    fill_in "Name", with: @type_skill.name
    click_on "Update Type skill"

    assert_text "Type skill was successfully updated"
    click_on "Back"
  end

  test "should destroy Type skill" do
    visit type_skill_url(@type_skill)
    click_on "Destroy this type skill", match: :first

    assert_text "Type skill was successfully destroyed"
  end
end
