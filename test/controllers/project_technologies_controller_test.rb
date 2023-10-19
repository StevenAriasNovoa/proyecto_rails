require "test_helper"

class ProjectTechnologiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_technology = project_technologies(:one)
  end

  test "should get index" do
    get project_technologies_url
    assert_response :success
  end

  test "should get new" do
    get new_project_technology_url
    assert_response :success
  end

  test "should create project_technology" do
    assert_difference("ProjectTechnology.count") do
      post project_technologies_url, params: { project_technology: {  } }
    end

    assert_redirected_to project_technology_url(ProjectTechnology.last)
  end

  test "should show project_technology" do
    get project_technology_url(@project_technology)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_technology_url(@project_technology)
    assert_response :success
  end

  test "should update project_technology" do
    patch project_technology_url(@project_technology), params: { project_technology: {  } }
    assert_redirected_to project_technology_url(@project_technology)
  end

  test "should destroy project_technology" do
    assert_difference("ProjectTechnology.count", -1) do
      delete project_technology_url(@project_technology)
    end

    assert_redirected_to project_technologies_url
  end
end
