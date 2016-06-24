require 'test_helper'

class MArticlesControllerTest < ActionController::TestCase
  setup do
    @m_article = m_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_article" do
    assert_difference('MArticle.count') do
      post :create, m_article: {  }
    end

    assert_redirected_to m_article_path(assigns(:m_article))
  end

  test "should show m_article" do
    get :show, id: @m_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @m_article
    assert_response :success
  end

  test "should update m_article" do
    patch :update, id: @m_article, m_article: {  }
    assert_redirected_to m_article_path(assigns(:m_article))
  end

  test "should destroy m_article" do
    assert_difference('MArticle.count', -1) do
      delete :destroy, id: @m_article
    end

    assert_redirected_to m_articles_path
  end
end
