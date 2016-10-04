require 'test_helper'

class ReviewOwnersControllerTest < ActionController::TestCase
  setup do
    @review_owner = review_owners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:review_owners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create review_owner" do
    assert_difference('ReviewOwner.count') do
      post :create, review_owner: { owner_id: @review_owner.owner_id, rating: @review_owner.rating, review: @review_owner.review, user_id: @review_owner.user_id }
    end

    assert_redirected_to review_owner_path(assigns(:review_owner))
  end

  test "should show review_owner" do
    get :show, id: @review_owner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @review_owner
    assert_response :success
  end

  test "should update review_owner" do
    patch :update, id: @review_owner, review_owner: { owner_id: @review_owner.owner_id, rating: @review_owner.rating, review: @review_owner.review, user_id: @review_owner.user_id }
    assert_redirected_to review_owner_path(assigns(:review_owner))
  end

  test "should destroy review_owner" do
    assert_difference('ReviewOwner.count', -1) do
      delete :destroy, id: @review_owner
    end

    assert_redirected_to review_owners_path
  end
end
