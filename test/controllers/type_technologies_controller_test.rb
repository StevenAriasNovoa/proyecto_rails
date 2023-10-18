require "test_helper"

class TypeTechnologiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_technology = type_technologies(:one)
  end

  test "should get index" do
    get type_technologies_url
    assert_response :success
  end

  test "should get new" do
    get new_type_technology_url
    assert_response :success
  end

  test "should create type_technology" do
    assert_difference("TypeTechnology.count") do
      post type_technologies_url, params: { type_technology: { name: @type_technology.name } }
    end

    assert_redirected_to type_technology_url(TypeTechnology.last)
  end

  test "should show type_technology" do
    get type_technology_url(@type_technology)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_technology_url(@type_technology)
    assert_response :success
  end

  test "should update type_technology" do
    patch type_technology_url(@type_technology), params: { type_technology: { name: @type_technology.name } }
    assert_redirected_to type_technology_url(@type_technology)
  end

  test "should destroy type_technology" do
    assert_difference("TypeTechnology.count", -1) do
      delete type_technology_url(@type_technology)
    end

    assert_redirected_to type_technologies_url
  end
end
