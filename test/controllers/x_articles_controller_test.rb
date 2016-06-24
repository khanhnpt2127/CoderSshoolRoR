require 'test_helper'

class XArticlesControllerTest < ActionController::TestCase
  setup do
    @x_article = x_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:x_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create x_article" do
    assert_difference('XArticle.count') do
      post :create, x_article: { title: @x_article.title }
    end

    assert_redirected_to x_article_path(assigns(:x_article))
  end

  test "should show x_article" do
    get :show, id: @x_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @x_article
    assert_response :success
  end

  test "should update x_article" do
    patch :update, id: @x_article, x_article: { title: @x_article.title }
    assert_redirected_to x_article_path(assigns(:x_article))
  end

  test "should destroy x_article" do
    assert_difference('XArticle.count', -1) do
      delete :destroy, id: @x_article
    end

    assert_redirected_to x_articles_path
  end
end
