require 'test_helper'

class NArticlesControllerTest < ActionController::TestCase
  setup do
    @n_article = n_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:n_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create n_article" do
    assert_difference('NArticle.count') do
      post :create, n_article: { body: @n_article.body, title: @n_article.title }
    end

    assert_redirected_to n_article_path(assigns(:n_article))
  end

  test "should show n_article" do
    get :show, id: @n_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @n_article
    assert_response :success
  end

  test "should update n_article" do
    patch :update, id: @n_article, n_article: { body: @n_article.body, title: @n_article.title }
    assert_redirected_to n_article_path(assigns(:n_article))
  end

  test "should destroy n_article" do
    assert_difference('NArticle.count', -1) do
      delete :destroy, id: @n_article
    end

    assert_redirected_to n_articles_path
  end
end
