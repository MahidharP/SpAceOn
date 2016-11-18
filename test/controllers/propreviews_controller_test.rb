require 'test_helper'

class PropreviewsControllerTest < ActionController::TestCase
  setup do
    @propreview = propreviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:propreviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create propreview" do
    assert_difference('Propreview.count') do
      post :create, propreview: { properity_id: @propreview.properity_id, rating: @propreview.rating, review: @propreview.review, user_id: @propreview.user_id }
    end

    assert_redirected_to propreview_path(assigns(:propreview))
  end

  test "should show propreview" do
    get :show, id: @propreview
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @propreview
    assert_response :success
  end

  test "should update propreview" do
    patch :update, id: @propreview, propreview: { properity_id: @propreview.properity_id, rating: @propreview.rating, review: @propreview.review, user_id: @propreview.user_id }
    assert_redirected_to propreview_path(assigns(:propreview))
  end

  test "should destroy propreview" do
    assert_difference('Propreview.count', -1) do
      delete :destroy, id: @propreview
    end

    assert_redirected_to propreviews_path
  end
end
