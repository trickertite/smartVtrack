require 'test_helper'

class ShareUsersControllerTest < ActionController::TestCase
  setup do
    @share_user = share_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:share_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create share_user" do
    assert_difference('ShareUser.count') do
      post :create, share_user: { driver: @share_user.driver }
    end

    assert_redirected_to share_user_path(assigns(:share_user))
  end

  test "should show share_user" do
    get :show, id: @share_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @share_user
    assert_response :success
  end

  test "should update share_user" do
    patch :update, id: @share_user, share_user: { driver: @share_user.driver }
    assert_redirected_to share_user_path(assigns(:share_user))
  end

  test "should destroy share_user" do
    assert_difference('ShareUser.count', -1) do
      delete :destroy, id: @share_user
    end

    assert_redirected_to share_users_path
  end
end
