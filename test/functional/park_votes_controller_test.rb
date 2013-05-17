require 'test_helper'

class ParkVotesControllerTest < ActionController::TestCase
  setup do
    @park_vote = park_votes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:park_votes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create park_vote" do
    assert_difference('ParkVote.count') do
      post :create, park_vote: { park_id: @park_vote.park_id, rating: @park_vote.rating, user_comment: @park_vote.user_comment, user_id: @park_vote.user_id }
    end

    assert_redirected_to park_vote_path(assigns(:park_vote))
  end

  test "should show park_vote" do
    get :show, id: @park_vote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @park_vote
    assert_response :success
  end

  test "should update park_vote" do
    put :update, id: @park_vote, park_vote: { park_id: @park_vote.park_id, rating: @park_vote.rating, user_comment: @park_vote.user_comment, user_id: @park_vote.user_id }
    assert_redirected_to park_vote_path(assigns(:park_vote))
  end

  test "should destroy park_vote" do
    assert_difference('ParkVote.count', -1) do
      delete :destroy, id: @park_vote
    end

    assert_redirected_to park_votes_path
  end
end
