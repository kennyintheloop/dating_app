require 'test_helper'

class PetDetailsControllerTest < ActionController::TestCase
  setup do
    @pet_detail = pet_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pet_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pet_detail" do
    assert_difference('PetDetail.count') do
      post :create, pet_detail: { age: @pet_detail.age, desc: @pet_detail.desc, fav_park: @pet_detail.fav_park, fav_toy: @pet_detail.fav_toy, gender: @pet_detail.gender, homepark: @pet_detail.homepark, name: @pet_detail.name, type1: @pet_detail.type1, type2: @pet_detail.type2, type: @pet_detail.type, user_id: @pet_detail.user_id }
    end

    assert_redirected_to pet_detail_path(assigns(:pet_detail))
  end

  test "should show pet_detail" do
    get :show, id: @pet_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pet_detail
    assert_response :success
  end

  test "should update pet_detail" do
    put :update, id: @pet_detail, pet_detail: { age: @pet_detail.age, desc: @pet_detail.desc, fav_park: @pet_detail.fav_park, fav_toy: @pet_detail.fav_toy, gender: @pet_detail.gender, homepark: @pet_detail.homepark, name: @pet_detail.name, type1: @pet_detail.type1, type2: @pet_detail.type2, type: @pet_detail.type, user_id: @pet_detail.user_id }
    assert_redirected_to pet_detail_path(assigns(:pet_detail))
  end

  test "should destroy pet_detail" do
    assert_difference('PetDetail.count', -1) do
      delete :destroy, id: @pet_detail
    end

    assert_redirected_to pet_details_path
  end
end
