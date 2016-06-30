require 'test_helper'

class AboutmesControllerTest < ActionController::TestCase
  setup do
    @aboutme = aboutmes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aboutmes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aboutme" do
    assert_difference('Aboutme.count') do
      post :create, aboutme: {  }
    end

    assert_redirected_to aboutme_path(assigns(:aboutme))
  end

  test "should show aboutme" do
    get :show, id: @aboutme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aboutme
    assert_response :success
  end

  test "should update aboutme" do
    patch :update, id: @aboutme, aboutme: {  }
    assert_redirected_to aboutme_path(assigns(:aboutme))
  end

  test "should destroy aboutme" do
    assert_difference('Aboutme.count', -1) do
      delete :destroy, id: @aboutme
    end

    assert_redirected_to aboutmes_path
  end
end
