require 'test_helper'

class UserDetailsControllerTest < ActionController::TestCase
  setup do
    @user_detail = user_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_detail" do
    assert_difference('UserDetail.count') do
      post :create, user_detail: { birthday: @user_detail.birthday, city: @user_detail.city, country: @user_detail.country, desc: @user_detail.desc, gender: @user_detail.gender, is_straight: @user_detail.is_straight, user_id: @user_detail.user_id, zipcode: @user_detail.zipcode }
    end

    assert_redirected_to user_detail_path(assigns(:user_detail))
  end

  test "should show user_detail" do
    get :show, id: @user_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_detail
    assert_response :success
  end

  test "should update user_detail" do
    put :update, id: @user_detail, user_detail: { birthday: @user_detail.birthday, city: @user_detail.city, country: @user_detail.country, desc: @user_detail.desc, gender: @user_detail.gender, is_straight: @user_detail.is_straight, user_id: @user_detail.user_id, zipcode: @user_detail.zipcode }
    assert_redirected_to user_detail_path(assigns(:user_detail))
  end

  test "should destroy user_detail" do
    assert_difference('UserDetail.count', -1) do
      delete :destroy, id: @user_detail
    end

    assert_redirected_to user_details_path
  end
end
