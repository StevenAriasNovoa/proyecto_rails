require "application_system_test_case"

class ProjectTechnologiesTest < ApplicationSystemTestCase
  setup do
    @project_technology = project_technologies(:one)
  end

  test "visiting the index" do
    visit project_technologies_url
    assert_selector "h1", text: "Project technologies"
  end

  test "should create project technology" do
    visit project_technologies_url
    click_on "New project technology"

    click_on "Create Project technology"

    assert_text "Project technology was successfully created"
    click_on "Back"
  end

  test "should update Project technology" do
    visit project_technology_url(@project_technology)
    click_on "Edit this project technology", match: :first

    click_on "Update Project technology"

    assert_text "Project technology was successfully updated"
    click_on "Back"
  end

  test "should destroy Project technology" do
    visit project_technology_url(@project_technology)
    click_on "Destroy this project technology", match: :first

    assert_text "Project technology was successfully destroyed"
  end
end
