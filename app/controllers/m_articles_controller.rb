class MArticlesController < ApplicationController
  before_action :set_m_article, only: [:show, :edit, :update, :destroy]

  # GET /m_articles
  # GET /m_articles.json
  def index
    @m_articles = MArticle.all
  end

  # GET /m_articles/1
  # GET /m_articles/1.json
  def show
  end

  # GET /m_articles/new
  def new
    @m_article = MArticle.new
  end

  # GET /m_articles/1/edit
  def edit
  end

  # POST /m_articles
  # POST /m_articles.json
  def create
    @m_article = MArticle.new(m_article_params)

    respond_to do |format|
      if @m_article.save
        format.html { redirect_to @m_article, notice: 'M article was successfully created.' }
        format.json { render :show, status: :created, location: @m_article }
      else
        format.html { render :new }
        format.json { render json: @m_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m_articles/1
  # PATCH/PUT /m_articles/1.json
  def update
    respond_to do |format|
      if @m_article.update(m_article_params)
        format.html { redirect_to @m_article, notice: 'M article was successfully updated.' }
        format.json { render :show, status: :ok, location: @m_article }
      else
        format.html { render :edit }
        format.json { render json: @m_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_articles/1
  # DELETE /m_articles/1.json
  def destroy
    @m_article.destroy
    respond_to do |format|
      format.html { redirect_to m_articles_url, notice: 'M article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m_article
      @m_article = MArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m_article_params
      params.fetch(:m_article, {})
    end
end
