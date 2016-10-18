require 'test_helper'

class BgroupsControllerTest < ActionController::TestCase
  setup do
    @bgroup = bgroups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bgroup" do
    assert_difference('Bgroup.count') do
      post :create, bgroup: { a_negative: @bgroup.a_negative, a_positive: @bgroup.a_positive, ab_negative: @bgroup.ab_negative, ab_positive: @bgroup.ab_positive, b_negative: @bgroup.b_negative, b_positive: @bgroup.b_positive, center_id: @bgroup.center_id, o_negative: @bgroup.o_negative, o_positive: @bgroup.o_positive }
    end

    assert_redirected_to bgroup_path(assigns(:bgroup))
  end

  test "should show bgroup" do
    get :show, id: @bgroup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bgroup
    assert_response :success
  end

  test "should update bgroup" do
    patch :update, id: @bgroup, bgroup: { a_negative: @bgroup.a_negative, a_positive: @bgroup.a_positive, ab_negative: @bgroup.ab_negative, ab_positive: @bgroup.ab_positive, b_negative: @bgroup.b_negative, b_positive: @bgroup.b_positive, center_id: @bgroup.center_id, o_negative: @bgroup.o_negative, o_positive: @bgroup.o_positive }
    assert_redirected_to bgroup_path(assigns(:bgroup))
  end

  test "should destroy bgroup" do
    assert_difference('Bgroup.count', -1) do
      delete :destroy, id: @bgroup
    end

    assert_redirected_to bgroups_path
  end
end
