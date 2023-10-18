require "test_helper"

class TypeSkillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_skill = type_skills(:one)
  end

  test "should get index" do
    get type_skills_url
    assert_response :success
  end

  test "should get new" do
    get new_type_skill_url
    assert_response :success
  end

  test "should create type_skill" do
    assert_difference("TypeSkill.count") do
      post type_skills_url, params: { type_skill: { name: @type_skill.name } }
    end

    assert_redirected_to type_skill_url(TypeSkill.last)
  end

  test "should show type_skill" do
    get type_skill_url(@type_skill)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_skill_url(@type_skill)
    assert_response :success
  end

  test "should update type_skill" do
    patch type_skill_url(@type_skill), params: { type_skill: { name: @type_skill.name } }
    assert_redirected_to type_skill_url(@type_skill)
  end

  test "should destroy type_skill" do
    assert_difference("TypeSkill.count", -1) do
      delete type_skill_url(@type_skill)
    end

    assert_redirected_to type_skills_url
  end
end
