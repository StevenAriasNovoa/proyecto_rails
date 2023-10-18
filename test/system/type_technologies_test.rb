require "application_system_test_case"

class TypeTechnologiesTest < ApplicationSystemTestCase
  setup do
    @type_technology = type_technologies(:one)
  end

  test "visiting the index" do
    visit type_technologies_url
    assert_selector "h1", text: "Type technologies"
  end

  test "should create type technology" do
    visit type_technologies_url
    click_on "New type technology"

    fill_in "Name", with: @type_technology.name
    click_on "Create Type technology"

    assert_text "Type technology was successfully created"
    click_on "Back"
  end

  test "should update Type technology" do
    visit type_technology_url(@type_technology)
    click_on "Edit this type technology", match: :first

    fill_in "Name", with: @type_technology.name
    click_on "Update Type technology"

    assert_text "Type technology was successfully updated"
    click_on "Back"
  end

  test "should destroy Type technology" do
    visit type_technology_url(@type_technology)
    click_on "Destroy this type technology", match: :first

    assert_text "Type technology was successfully destroyed"
  end
end
