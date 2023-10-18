require "test_helper"

class UserUserTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_user_type = user_user_types(:one)
  end

  test "should get index" do
    get user_user_types_url
    assert_response :success
  end

  test "should get new" do
    get new_user_user_type_url
    assert_response :success
  end

  test "should create user_user_type" do
    assert_difference("UserUserType.count") do
      post user_user_types_url, params: { user_user_type: {  } }
    end

    assert_redirected_to user_user_type_url(UserUserType.last)
  end

  test "should show user_user_type" do
    get user_user_type_url(@user_user_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_user_type_url(@user_user_type)
    assert_response :success
  end

  test "should update user_user_type" do
    patch user_user_type_url(@user_user_type), params: { user_user_type: {  } }
    assert_redirected_to user_user_type_url(@user_user_type)
  end

  test "should destroy user_user_type" do
    assert_difference("UserUserType.count", -1) do
      delete user_user_type_url(@user_user_type)
    end

    assert_redirected_to user_user_types_url
  end
end
