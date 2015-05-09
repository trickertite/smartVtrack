require 'test_helper'

class QueryUsersControllerTest < ActionController::TestCase
  setup do
    @query_user = query_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:query_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create query_user" do
    assert_difference('QueryUser.count') do
      post :create, query_user: { email: @query_user.email, mobile: @query_user.mobile, name: @query_user.name, password: @query_user.password }
    end

    assert_redirected_to query_user_path(assigns(:query_user))
  end

  test "should show query_user" do
    get :show, id: @query_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @query_user
    assert_response :success
  end

  test "should update query_user" do
    patch :update, id: @query_user, query_user: { email: @query_user.email, mobile: @query_user.mobile, name: @query_user.name, password: @query_user.password }
    assert_redirected_to query_user_path(assigns(:query_user))
  end

  test "should destroy query_user" do
    assert_difference('QueryUser.count', -1) do
      delete :destroy, id: @query_user
    end

    assert_redirected_to query_users_path
  end
end
