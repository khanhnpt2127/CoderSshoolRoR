require 'test_helper'

class NCommentsControllerTest < ActionController::TestCase
  setup do
    @n_comment = n_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:n_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create n_comment" do
    assert_difference('NComment.count') do
      post :create, n_comment: { [name: @n_comment.[name, body: @n_comment.body }
    end

    assert_redirected_to n_comment_path(assigns(:n_comment))
  end

  test "should show n_comment" do
    get :show, id: @n_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @n_comment
    assert_response :success
  end

  test "should update n_comment" do
    patch :update, id: @n_comment, n_comment: { [name: @n_comment.[name, body: @n_comment.body }
    assert_redirected_to n_comment_path(assigns(:n_comment))
  end

  test "should destroy n_comment" do
    assert_difference('NComment.count', -1) do
      delete :destroy, id: @n_comment
    end

    assert_redirected_to n_comments_path
  end
end
