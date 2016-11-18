require 'test_helper'

class ReviewTenantsControllerTest < ActionController::TestCase
  setup do
    @review_tenant = review_tenants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:review_tenants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create review_tenant" do
    assert_difference('ReviewTenant.count') do
      post :create, review_tenant: { rating: @review_tenant.rating, review: @review_tenant.review, tenant_id: @review_tenant.tenant_id, user_id: @review_tenant.user_id }
    end

    assert_redirected_to review_tenant_path(assigns(:review_tenant))
  end

  test "should show review_tenant" do
    get :show, id: @review_tenant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @review_tenant
    assert_response :success
  end

  test "should update review_tenant" do
    patch :update, id: @review_tenant, review_tenant: { rating: @review_tenant.rating, review: @review_tenant.review, tenant_id: @review_tenant.tenant_id, user_id: @review_tenant.user_id }
    assert_redirected_to review_tenant_path(assigns(:review_tenant))
  end

  test "should destroy review_tenant" do
    assert_difference('ReviewTenant.count', -1) do
      delete :destroy, id: @review_tenant
    end

    assert_redirected_to review_tenants_path
  end
end
