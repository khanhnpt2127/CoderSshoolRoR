class NArticlesController < ApplicationController
  before_action :set_n_article, only: [:show, :edit, :update, :destroy]

  # GET /n_articles
  # GET /n_articles.json
  def index
    @n_articles = NArticle.all
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
  end

  # GET /n_articles/1
  # GET /n_articles/1.json
  def show
  end

  # GET /n_articles/new
  def new
    @n_article = NArticle.new
  end

  # GET /n_articles/1/edit
  def edit
  end

  # POST /n_articles
  # POST /n_articles.json
  def create
    @n_article = NArticle.new(n_article_params)

    respond_to do |format|
      if @n_article.save
        format.html { redirect_to @n_article, notice: 'N article was successfully created.' }
        format.json { render :show, status: :created, location: @n_article }
      else
        format.html { render :new }
        format.json { render json: @n_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /n_articles/1
  # PATCH/PUT /n_articles/1.json
  def update
    respond_to do |format|
      if @n_article.update(n_article_params)
        format.html { redirect_to @n_article, notice: 'N article was successfully updated.' }
        format.json { render :show, status: :ok, location: @n_article }
      else
        format.html { render :edit }
        format.json { render json: @n_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /n_articles/1
  # DELETE /n_articles/1.json
  def destroy
    @n_article.destroy
    respond_to do |format|
      format.html { redirect_to n_articles_url, notice: 'N article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
        def set_n_article
      @n_article = NArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def n_article_params
      params.require(:n_article).permit(:title, :body)
    end
end
